$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDJNIOBJECT
#endif

CLASS QtAndroid

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD androidActivity
   METHOD androidSdkVersion
   METHOD startIntentSender
   METHOD startActivity

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QtAndroid
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

$includes=5,2,0

/*
static QAndroidJniObject androidActivity()
*/
HB_FUNC_STATIC( QTANDROID_ANDROIDACTIVITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * ptr = new QAndroidJniObject( QtAndroid::androidActivity () );
  _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT" );
#endif
}

/*
static int androidSdkVersion()
*/
$staticMethod=5,2,0|int|androidSdkVersion|

/*
static void startIntentSender(const QAndroidJniObject &intentSender, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = 0)
*/
HB_FUNC_STATIC( QTANDROID_STARTINTENTSENDER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISQANDROIDJNIOBJECT(1) && ISNUM(2) && (ISQANDROIDACTIVITYRESULTRECEIVER(3)||ISNIL(3)) )
  {
    QAndroidActivityResultReceiver * par3 = ISNIL(3)? 0 : (QAndroidActivityResultReceiver *) _qt5xhb_itemGetPtr(3);
    QtAndroid::startIntentSender ( *PQANDROIDJNIOBJECT(1), PINT(2), par3 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void startActivity(const QAndroidJniObject &intent, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = 0)
*/
HB_FUNC_STATIC( QTANDROID_STARTACTIVITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISQANDROIDJNIOBJECT(1) && ISNUM(2) && (ISQANDROIDACTIVITYRESULTRECEIVER(3)||ISNIL(3)) )
  {
    QAndroidActivityResultReceiver * par3 = ISNIL(3)? 0 : (QAndroidActivityResultReceiver *) _qt5xhb_itemGetPtr(3);
    QtAndroid::startActivity ( *PQANDROIDJNIOBJECT(1), PINT(2), par3 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$extraMethods

#pragma ENDDUMP
