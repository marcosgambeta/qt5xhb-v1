$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBELEMENT
#endif

CLASS QWebElementCollection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD count
   METHOD first
   METHOD last
   METHOD toList

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

/*
QWebElementCollection ()
*/
$internalConstructor=|new1|

/*
QWebElementCollection ( const QWebElement & contextElement, const QString & query )
*/
$internalConstructor=|new2|const QWebElement &,const QString &

/*
QWebElementCollection ( const QWebElementCollection & other )
*/
$internalConstructor=|new3|const QWebElementCollection &

//[1]QWebElementCollection ()
//[2]QWebElementCollection ( const QWebElement & contextElement, const QString & query )
//[3]QWebElementCollection ( const QWebElementCollection & other )

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QWebElementCollection_new1();
  }
  else if( ISNUMPAR(2) && ISQWEBELEMENT(1) && ISCHAR(2) )
  {
    QWebElementCollection_new2();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENTCOLLECTION(1) )
  {
    QWebElementCollection_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append ( const QWebElementCollection & other )
*/
$method=|void|append|const QWebElementCollection &

/*
QWebElement at ( int i ) const
*/
$method=|QWebElement|at|int

/*
int count () const
*/
$method=|int|count|

/*
QWebElement first () const
*/
$method=|QWebElement|first|

/*
QWebElement last () const
*/
$method=|QWebElement|last|

/*
QList<QWebElement> toList () const
*/
$method=|QList<QWebElement>|toList|

$extraMethods

#pragma ENDDUMP
