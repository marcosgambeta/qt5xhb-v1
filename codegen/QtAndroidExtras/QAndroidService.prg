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

$beginClassFrom=QCoreApplication

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=QAndroidService(int &argc, char **argv)
HB_FUNC_STATIC( QANDROIDSERVICE_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QAndroidService * o = NULL;
  o = new QAndroidService( argc, argv );
  _qt5xhb_returnNewObject( o, false );
}
$addMethod=new

$prototype=QAndroidService(int &argc, char **argv, const std::function<QAndroidBinder*(const QAndroidIntent &intent)> & binder)
%% TODO: implementar

$prototype=virtual ~QAndroidService()
$deleteMethod=5,10,0

$prototype=virtual QAndroidBinder* onBind(const QAndroidIntent &intent)
$virtualMethod=5,10,0|QAndroidBinder *|onBind|const QAndroidIntent &

#pragma ENDDUMP
