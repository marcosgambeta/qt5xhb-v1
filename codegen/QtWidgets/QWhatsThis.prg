$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QWhatsThis

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createAction
   METHOD enterWhatsThisMode
   METHOD hideText
   METHOD inWhatsThisMode
   METHOD leaveWhatsThisMode
   METHOD showText

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

/*
static QAction * createAction(QObject * parent = 0)
*/
HB_FUNC_STATIC( QWHATSTHIS_CREATEACTION )
{
  QAction * ptr = QWhatsThis::createAction ( OPQOBJECT(1,0) );
  _qt5xhb_createReturnClass ( ptr, "QACTION" );
}


/*
static void enterWhatsThisMode()
*/
HB_FUNC_STATIC( QWHATSTHIS_ENTERWHATSTHISMODE )
{
  QWhatsThis::enterWhatsThisMode ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void hideText()
*/
HB_FUNC_STATIC( QWHATSTHIS_HIDETEXT )
{
  QWhatsThis::hideText ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool inWhatsThisMode()
*/
HB_FUNC_STATIC( QWHATSTHIS_INWHATSTHISMODE )
{
  RBOOL( QWhatsThis::inWhatsThisMode () );
}


/*
static void leaveWhatsThisMode()
*/
HB_FUNC_STATIC( QWHATSTHIS_LEAVEWHATSTHISMODE )
{
  QWhatsThis::leaveWhatsThisMode ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void showText(const QPoint & pos, const QString & text, QWidget * w = 0)
*/
HB_FUNC_STATIC( QWHATSTHIS_SHOWTEXT )
{
  QWhatsThis::showText ( *PQPOINT(1), PQSTRING(2), OPQWIDGET(3,0) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
