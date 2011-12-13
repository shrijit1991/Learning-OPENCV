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
        break;
      }
      else
      { 
        red = cvCreateImage(cvGetSize(img), 8, 1);
        green = cvCreateImage(cvGetSize(img), 8, 1);
        blue = cvCreateImage(cvGetSize(img), 8, 1);
        
        cvSplit(img, red, green, blue, 0);
        
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
          break;
        }
      }
	  cvReleaseImage(&red);
	  cvReleaseImage(&green);
	  cvReleaseImage(&blue);
    }
    cvReleaseImage(&img);
  }
  return error_code;
}
