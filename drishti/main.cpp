#include <GL/glew.h>

#include <QApplication>
#include "mainwindow.h"

int main(int argc, char** argv)
{
  char *flnm;

  QApplication application(argc,argv);
  
  QGLFormat glFormat;
  glFormat.setSampleBuffers(true);
  glFormat.setDoubleBuffer(true);
  glFormat.setRgba(true);
  glFormat.setAlpha(true);

//  //-----------------------------
//  // did not work - still getting 8bit buffers
//  glFormat.setAlphaBufferSize(16);
//  glFormat.setRedBufferSize(16);
//  glFormat.setGreenBufferSize(16);
//  glFormat.setBlueBufferSize(16);
//  //-----------------------------

  bool usePresentMode = false;

  if (argc > 1)
    {
		for (int i=1; i < argc; ++i) {
			if (QString::compare(argv[i], "-stereo", Qt::CaseInsensitive) == 0)
				glFormat.setStereo(true);
			if (QString::compare(argv[i], "-present", Qt::CaseInsensitive) == 0)
				usePresentMode = true;
		}
    }

  QGLFormat::setDefaultFormat(glFormat);

  MainWindow mainwindow;
  mainwindow.presentMode = usePresentMode;
  mainwindow.show();
  
  // Run main loop.
  return application.exec();
}
