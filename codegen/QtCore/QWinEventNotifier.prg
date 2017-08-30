$header

#include "hbclass.ch"

CLASS QWinEventNotifier INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEnabled
   METHOD setEnabled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QWinEventNotifier(QObject *parent = 0)
*/
void QWinEventNotifier_new1 ()
{
#ifdef Q_OS_WIN
  QWinEventNotifier * o = new QWinEventNotifier ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
explicit QWinEventNotifier(HANDLE hEvent, QObject *parent = 0) // TODO: implementar
*/
// void QWinEventNotifier_new2 ()
// {
// #ifdef Q_OS_WIN
//   HANDLE par1 = (HANDLE) hb_parptr(1);
//   QWinEventNotifier * o = new QWinEventNotifier ( par1, OPQOBJECT(2,0) );
//   _qt5xhb_storePointerAndFlag( o, false );
// #endif
// }

//[1]explicit QWinEventNotifier(QObject *parent = 0)
//[2]explicit QWinEventNotifier(HANDLE hEvent, QObject *parent = 0)

HB_FUNC_STATIC( QWINEVENTNOTIFIER_NEW )
{
#ifdef Q_OS_WIN
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QWinEventNotifier_new1();
  }
  //else if( ISBETWEEN(1,2) && ISPOINTER(1) && ISOPTQOBJECT(2) )
  //{
  //  QWinEventNotifier_new2();
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QWINEVENTNOTIFIER_DELETE )
{
#ifdef Q_OS_WIN
  QWinEventNotifier * obj = (QWinEventNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isEnabled() const
*/
$method=|bool|isEnabled||#ifdef Q_OS_WIN

/*
void setEnabled(bool enable)
*/
$method=|void|setEnabled|bool|#ifdef Q_OS_WIN

#pragma ENDDUMP
