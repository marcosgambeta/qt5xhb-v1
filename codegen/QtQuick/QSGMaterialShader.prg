$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOPENGLSHADERPROGRAM
#endif

CLASS QSGMaterialShader

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activate
   METHOD deactivate
   METHOD program

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void activate()
$virtualMethod=|void|activate|

$prototype=virtual void deactivate()
$virtualMethod=|void|deactivate|

$prototype=QOpenGLShaderProgram * program()
$method=|QOpenGLShaderProgram *|program|

$extraMethods

#pragma ENDDUMP
