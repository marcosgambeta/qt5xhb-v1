%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QOBJECT
#endif

CLASS QDesignerPropertyEditorInterface INHERIT QWidget

   METHOD delete
   METHOD core
   METHOD currentPropertyName
   METHOD isReadOnly
   METHOD object
   METHOD setObject
   METHOD setPropertyValue
   METHOD setReadOnly

   METHOD onPropertyChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QDesignerFormEditorInterface * core () const
$virtualMethod=|QDesignerFormEditorInterface *|core|

$prototype=virtual QString currentPropertyName () const = 0
$virtualMethod=|QString|currentPropertyName|

$prototype=virtual bool isReadOnly () const = 0
$virtualMethod=|bool|isReadOnly|

$prototype=virtual QObject * object () const = 0
$virtualMethod=|QObject *|object|

$prototype=virtual void setObject ( QObject * object ) = 0
$virtualMethod=|void|setObject|QObject *

$prototype=virtual void setPropertyValue ( const QString & name, const QVariant & value, bool changed = true ) = 0
$virtualMethod=|void|setPropertyValue|const QString &,const QVariant &,bool=true

$prototype=virtual void setReadOnly ( bool readOnly ) = 0
$virtualMethod=|void|setReadOnly|bool

#pragma ENDDUMP
