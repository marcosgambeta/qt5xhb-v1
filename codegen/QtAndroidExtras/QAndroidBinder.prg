%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=explicit QAndroidBinder()
$internalConstructor=5,10,0|new1|

$prototype=QAndroidBinder(const QAndroidJniObject &binder)
$internalConstructor=5,10,0|new2|const QAndroidJniObject &

//[1]explicit QAndroidBinder()
//[2]QAndroidBinder(const QAndroidJniObject &binder)

HB_FUNC_STATIC( QANDROIDBINDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidBinder_new1();
  }
  else if( ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1) )
  {
    QAndroidBinder_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QAndroidBinder()
$deleteMethod=5,10,0

$prototype=virtual bool onTransact(int code, const QAndroidParcel &data, const QAndroidParcel &reply, CallType flags)
$virtualMethod=5,10,0|bool|onTransact|int,const QAndroidParcel &,const QAndroidParcel &,QAndroidBinder::CallType

$prototype=bool transact(int code, const QAndroidParcel &data, QAndroidParcel *reply = nullptr, CallType flags = CallType::Normal) const
$method=5,10,0|bool|transact|int,const QAndroidParcel &,QAndroidParcel *=nullptr,QAndroidBinder::CallType=CallType::Normal

$prototype=QAndroidJniObject handle() const
$method=5,10,0|QAndroidJniObject|handle|

#pragma ENDDUMP
