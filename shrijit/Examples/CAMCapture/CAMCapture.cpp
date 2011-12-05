#include <cv.h>
#include <highgui.h>
#include <iostream>

using namespace std;

int error_code = 0;

int main ( int argc, char **argv )
{
  CvCapture *cap = 0;
  IplImage *img = 0;
  IplImage *red = 0, *blue = 0, *green = 0;
  bool cont = true;
  
  cap = cvCaptureFromCAM(0); //first capture device
  if(cap == 0)
  {
    cout << "Error initializing camera!!!\n";
    error_code = -1;
  }
  else
  {
    cvSetCaptureProperty(cap, CV_CAP_PROP_FRAME_WIDTH, 640);
    cvSetCaptureProperty(cap, CV_CAP_PROP_FRAME_HEIGHT, 480);
    while(cont)
    {
      img = cvQueryFrame(cap);
      if(img == 0)
      {
        cout << "Error while fetching frame form camera!!!\n";
        error_code = -1;
        cont = false;
      }
      else
      {
        red = cvCreateImage(cvGetSize(img), 8, 1);
        green = cvCreateImage(cvGetSize(img), 8, 1);
        blue = cvCreateImage(cvGetSize(img), 8, 1);
        
        //copy blue channel of img in blue
        cvSetImageCOI(img, 1);
        cvCopy(img, blue, NULL);
        
        //copy green channel of img in green
        cvSetImageCOI(img, 2);
        cvCopy(img, green, NULL);
        
        //copy red channel of img in red
        cvSetImageCOI(img, 3);
        cvCopy(img, red, NULL);
        
        cvNamedWindow("RED CHANNEL", CV_WINDOW_AUTOSIZE);
        cvNamedWindow("GREEN CHANNEL", CV_WINDOW_AUTOSIZE);
        cvNamedWindow("BLUE CHANNEL", CV_WINDOW_AUTOSIZE);
        cvNamedWindow("ORIGINAL", CV_WINDOW_AUTOSIZE);
        
        cvShowImage("ORIGINAL", img);
        cvShowImage("RED CHANNEL", red);
        cvShowImage("GREEN CHANNEL", green);
        cvShowImage("BLUE CHANNEL", blue);
        
        
        char res = cvWaitKey(20);
        if(res == 'q')
        {
          cont = false;
        }
      }
      if(!cont)
        break;
    }
    cvReleaseImage(&img);
    cvReleaseImage(&red);
    cvReleaseImage(&green);
    cvReleaseImage(&blue);
  }
  return error_code;
}
