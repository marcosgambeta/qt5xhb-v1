$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColormap

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD colorAt
   METHOD colormap
   METHOD depth
   METHOD mode
   METHOD pixel
   METHOD size
   METHOD instance

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

#include <QColor>

$prototype=QColormap ( const QColormap & colormap )
$constructor=|new|const QColormap &

$deleteMethod

$prototype=const QColor colorAt ( uint pixel ) const
$method=|const QColor|colorAt|uint

$prototype=const QVector<QColor> colormap () const
$method=|const QVector<QColor>|colormap|

$prototype=int depth () const
$method=|int|depth|

$prototype=Mode mode () const
$method=|QColormap::Mode|mode|

$prototype=uint pixel ( const QColor & color ) const
$method=|uint|pixel|const QColor &

$prototype=int size () const
$method=|int|size|

$prototype=static QColormap instance ( int screen = -1 )
$staticMethod=|QColormap|instance|int=-1

$extraMethods

#pragma ENDDUMP
