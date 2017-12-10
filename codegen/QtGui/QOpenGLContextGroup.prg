$header

#include "hbclass.ch"

CLASS QOpenGLContextGroup INHERIT QObject

   METHOD delete
   METHOD shares
   METHOD currentContextGroup

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QList<QOpenGLContext *> shares() const
$method=|QList<QOpenGLContext *>|shares|

$prototype=static QOpenGLContextGroup *currentContextGroup()
$staticMethod=|QOpenGLContextGroup *|currentContextGroup|

#pragma ENDDUMP
