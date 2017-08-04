$header

#include "hbclass.ch"

CLASS QOpenGLVertexArrayObject INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD objectId
   METHOD bind
   METHOD release

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QOpenGLVertexArrayObject(QObject* parent = 0)
*/
$method=|new|QObject *=0

$deleteMethod

/*
bool create()
*/
$method=|bool|create|

/*
void destroy()
*/
$method=|void|destroy|

/*
bool isCreated() const
*/
$method=|bool|isCreated|

/*
GLuint objectId() const
*/
$method=|GLuint|objectId|

/*
void bind()
*/
$method=|void|bind|

/*
void release()
*/
$method=|void|release|

#pragma ENDDUMP
