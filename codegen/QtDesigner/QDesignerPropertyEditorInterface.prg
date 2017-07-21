$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QOBJECT
#endif

CLASS QDesignerPropertyEditorInterface INHERIT QWidget

   DATA self_destruction INIT .F.

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

/*
virtual QDesignerFormEditorInterface * core () const
*/
$method=|QDesignerFormEditorInterface *|core|

/*
virtual QString currentPropertyName () const = 0
*/
$method=|QString|currentPropertyName|

/*
virtual bool isReadOnly () const = 0
*/
$method=|bool|isReadOnly|

/*
virtual QObject * object () const = 0
*/
$method=|QObject *|object|

/*
virtual void setObject ( QObject * object ) = 0
*/
$method=|void|setObject|QObject *

/*
virtual void setPropertyValue ( const QString & name, const QVariant & value, bool changed = true ) = 0
*/
$method=|void|setPropertyValue|const QString &,const QVariant &,bool=true

/*
virtual void setReadOnly ( bool readOnly ) = 0
*/
$method=|void|setReadOnly|bool

#pragma ENDDUMP
