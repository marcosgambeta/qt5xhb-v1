$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QOPENGLFUNCTIONS
REQUEST QFUNCTIONPOINTER
REQUEST QSCREEN
REQUEST QOPENGLCONTEXTGROUP
REQUEST QSURFACE
#endif

CLASS QOpenGLContext INHERIT QObject

   METHOD new
   METHOD delete
   METHOD create
   METHOD defaultFramebufferObject
   METHOD doneCurrent
   METHOD format
   METHOD functions
   METHOD getProcAddress
   METHOD hasExtension
   METHOD isValid
   METHOD makeCurrent
   METHOD screen
   METHOD setFormat
   METHOD setScreen
   METHOD setShareContext
   METHOD shareContext
   METHOD shareGroup
   METHOD surface
   METHOD swapBuffers
   METHOD areSharing
   METHOD currentContext

   METHOD onAboutToBeDestroyed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QOpenGLContext(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
bool create()
*/
$method=|bool|create|

/*
GLuint defaultFramebufferObject() const
*/
$method=|GLuint|defaultFramebufferObject|

/*
void doneCurrent()
*/
$method=|void|doneCurrent|

/*
QSurfaceFormat format() const
*/
$method=|QSurfaceFormat|format|

/*
QOpenGLFunctions * functions() const
*/
$method=|QOpenGLFunctions *|functions|

/*
QFunctionPointer getProcAddress(const QByteArray & procName) const
*/
$method=|QFunctionPointer|getProcAddress|const QByteArray &

/*
bool hasExtension(const QByteArray & extension) const
*/
$method=|bool|hasExtension|const QByteArray &

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
bool makeCurrent(QSurface * surface)
*/
$method=|bool|makeCurrent|QSurface *

/*
QScreen * screen() const
*/
$method=|QScreen *|screen|

/*
void setFormat(const QSurfaceFormat & format)
*/
$method=|void|setFormat|const QSurfaceFormat &

/*
void setScreen(QScreen * screen)
*/
$method=|void|setScreen|QScreen *

/*
void setShareContext(QOpenGLContext * shareContext)
*/
$method=|void|setShareContext|QOpenGLContext *

/*
QOpenGLContext * shareContext() const
*/
$method=|QOpenGLContext *|shareContext|

/*
QOpenGLContextGroup * shareGroup() const
*/
$method=|QOpenGLContextGroup *|shareGroup|

/*
QSurface * surface() const
*/
$method=|QSurface *|surface|

/*
void swapBuffers(QSurface * surface)
*/
$method=|void|swapBuffers|QSurface *

/*
static bool areSharing(QOpenGLContext * first, QOpenGLContext * second)
*/
$staticMethod=|bool|areSharing|QOpenGLContext *,QOpenGLContext *

/*
static QOpenGLContext * currentContext()
*/
$staticMethod=|QOpenGLContext *|currentContext|

#pragma ENDDUMP
