$header

#include "hbclass.ch"

CLASS QWinEventNotifier INHERIT QObject

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
$internalConstructor=|new1|QObject *=0|#ifdef Q_OS_WIN

/*
explicit QWinEventNotifier(HANDLE hEvent, QObject *parent = 0)
*/
$internalConstructor=|new2|HANDLE,QObject *=0|#ifdef Q_OS_WIN

//[1]explicit QWinEventNotifier(QObject *parent = 0)
//[2]explicit QWinEventNotifier(HANDLE hEvent, QObject *parent = 0)

HB_FUNC_STATIC( QWINEVENTNOTIFIER_NEW )
{
#ifdef Q_OS_WIN
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QWinEventNotifier_new1();
  }
  else if( ISBETWEEN(1,2) && ISPOINTER(1) && ISOPTQOBJECT(2) )
  {
    QWinEventNotifier_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=|#ifdef Q_OS_WIN

/*
bool isEnabled() const
*/
$method=|bool|isEnabled||#ifdef Q_OS_WIN

/*
void setEnabled(bool enable)
*/
$method=|void|setEnabled|bool|#ifdef Q_OS_WIN

#pragma ENDDUMP
