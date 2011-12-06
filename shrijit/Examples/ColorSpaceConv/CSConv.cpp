#include <cv.h>
#include <highgui.h>
#include <iostream>

using namespace std;

int error_code = 0;

int main ( int argc, char **argv )
{
  CvCapture *cap = 0;
  IplImage *img = 0, *hsvimg = 0;
  IplImage *hpart = 0, *spart = 0, *vpart = 0;
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
        hsvimg = cvCreateImage(cvGetSize(img), 8, 3);
        hpart = cvCreateImage(cvGetSize(img), 8, 1);
        spart = cvCreateImage(cvGetSize(img), 8, 1);
        vpart = cvCreateImage(cvGetSize(img), 8, 1);
        
        cvCvtColor(img, hsvimg, CV_RGB2HSV);
        cvSplit(hsvimg, hpart, spart, vpart, NULL);
        
        cvNamedWindow("H CHANNEL", CV_WINDOW_AUTOSIZE);
        cvNamedWindow("S CHANNEL", CV_WINDOW_AUTOSIZE);
        cvNamedWindow("V CHANNEL", CV_WINDOW_AUTOSIZE);
        cvNamedWindow("ORIGINAL", CV_WINDOW_AUTOSIZE);
        
        cvShowImage("ORIGINAL", img);
        cvShowImage("H CHANNEL", hpart);
        cvShowImage("S CHANNEL", spart);
        cvShowImage("V CHANNEL", vpart);
        
        
        char res = cvWaitKey(30);
        if(res == 'q')
        {
          cont = false;
        }
      }
        
      cvReleaseImage(&hsvimg);
      cvReleaseImage(&hpart);
      cvReleaseImage(&vpart);
      cvReleaseImage(&spart);
      
      if(!cont)
        break;
    }
    cvReleaseImage(&img);
  }
  return error_code;
}
