%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QUuid appID () const
$virtualMethod=|QUuid|appID|

$prototype=virtual QUuid classID ( const QString & key ) const
$virtualMethod=|QUuid|classID|const QString &

$prototype=virtual QObject * createObject ( const QString & key ) = 0
$virtualMethod=|QObject *|createObject|const QString &

$prototype=virtual QUuid eventsID ( const QString & key ) const
$virtualMethod=|QUuid|eventsID|const QString &

$prototype=virtual QString exposeToSuperClass ( const QString & key ) const
$virtualMethod=|QString|exposeToSuperClass|const QString &

$prototype=virtual QStringList featureList () const = 0
$virtualMethod=|QStringList|featureList|

$prototype=virtual bool hasStockEvents ( const QString & key ) const
$virtualMethod=|bool|hasStockEvents|const QString &

$prototype=virtual QUuid interfaceID ( const QString & key ) const
$virtualMethod=|QUuid|interfaceID|const QString &

$prototype=virtual bool isService () const
$virtualMethod=|bool|isService|

$prototype=virtual const QMetaObject * metaObject ( const QString & key ) const = 0
$virtualMethod=|const QMetaObject *|metaObject|const QString &

$prototype=virtual void registerClass ( const QString & key, QSettings * settings ) const
$virtualMethod=|void|registerClass|const QString &,QSettings *

$prototype=virtual bool stayTopLevel ( const QString & key ) const
$virtualMethod=|bool|stayTopLevel|const QString &

$prototype=virtual QUuid typeLibID () const
$virtualMethod=|QUuid|typeLibID|

$prototype=virtual void unregisterClass ( const QString & key, QSettings * settings ) const
$virtualMethod=|void|unregisterClass|const QString &,QSettings *

$prototype=virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
$virtualMethod=|bool|validateLicenseKey|const QString &,const QString &

$prototype=static bool isServer ()
$staticMethod=|bool|isServer|

$prototype=static bool registerActiveObject ( QObject * object )
$staticMethod=|bool|registerActiveObject|QObject *

$prototype=static QString serverDirPath ()
$staticMethod=|QString|serverDirPath|

$prototype=static QString serverFilePath ()
$staticMethod=|QString|serverFilePath|

$prototype=static bool startServer ( ServerType type = MultipleInstances )
$staticMethod=|bool|startServer|QAxFactory::ServerType=QAxFactory::MultipleInstances

$prototype=static bool stopServer ()
$staticMethod=|bool|stopServer|

#pragma ENDDUMP
