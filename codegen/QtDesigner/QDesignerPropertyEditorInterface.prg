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
$method=|QDesignerFormEditorInterface *|core|

$prototype=virtual QString currentPropertyName () const = 0
$method=|QString|currentPropertyName|

$prototype=virtual bool isReadOnly () const = 0
$method=|bool|isReadOnly|

$prototype=virtual QObject * object () const = 0
$method=|QObject *|object|

$prototype=virtual void setObject ( QObject * object ) = 0
$method=|void|setObject|QObject *

$prototype=virtual void setPropertyValue ( const QString & name, const QVariant & value, bool changed = true ) = 0
$method=|void|setPropertyValue|const QString &,const QVariant &,bool=true

$prototype=virtual void setReadOnly ( bool readOnly ) = 0
$method=|void|setReadOnly|bool

#pragma ENDDUMP
