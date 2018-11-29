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

$prototype=QAndroidIntent()
$internalConstructor=5,10,0|new1|

$prototype=explicit QAndroidIntent(const QAndroidJniObject &intent)
$internalConstructor=5,10,0|new2|const QAndroidJniObject &

$prototype=explicit QAndroidIntent(const QString &action)
$internalConstructor=5,10,0|new3|const QString &

$prototype=explicit QAndroidIntent(const QAndroidJniObject &packageContext, const char *className)
$internalConstructor=5,10,0|new4|const QAndroidJniObject &,const char *

//[1]QAndroidIntent()
//[2]explicit QAndroidIntent(const QAndroidJniObject &intent)
//[3]explicit QAndroidIntent(const QString &action)
//[4]explicit QAndroidIntent(const QAndroidJniObject &packageContext, const char *className)

HB_FUNC_STATIC( QANDROIDINTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidIntent_new1();
  }
  else if( ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1) )
  {
    QAndroidIntent_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QAndroidIntent_new3();
  }
  else if( ISNUMPAR(2) && ISQANDROIDJNIOBJECT(1) && ISCHAR(2) )
  {
    QAndroidIntent_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QAndroidIntent();
$deleteMethod=5,10,0

$prototype=void putExtra(const QString &key, const QByteArray &data)
$method=5,10,0|void|putExtra|const QString &,const QByteArray &

$prototype=QByteArray extraBytes(const QString &key)
$method=5,10,0|QByteArray|extraBytes|const QString &

$prototype=void putExtra(const QString &key, const QVariant &value)
$method=5,10,0|void|putExtra|const QString &,const QVariant &

$prototype=QVariant extraVariant(const QString &key)
$method=5,10,0|QVariant|extraVariant|const QString &

$prototype=QAndroidJniObject handle() const
$method=5,10,0|QAndroidJniObject|handle|

#pragma ENDDUMP
