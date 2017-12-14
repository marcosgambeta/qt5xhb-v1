$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAMETHOD
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QVARIANT
#endif

CLASS QQmlProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD connectNotifySignal1
   METHOD connectNotifySignal2
   METHOD connectNotifySignal
   METHOD hasNotifySignal
   METHOD index
   METHOD isDesignable
   METHOD isProperty
   METHOD isResettable
   METHOD isSignalProperty
   METHOD isValid
   METHOD isWritable
   METHOD method
   METHOD name
   METHOD needsNotifySignal
   METHOD object
   METHOD property
   METHOD propertyType
   METHOD propertyTypeCategory
   METHOD propertyTypeName
   METHOD read1
   METHOD read2
   METHOD read3
   METHOD read4
   METHOD read
   METHOD reset
   METHOD type
   METHOD write1
   METHOD write2
   METHOD write3
   METHOD write4
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQmlProperty()
$constructor=|new1|

$prototype=QQmlProperty(QObject * obj)
$constructor=|new2|QObject *

$prototype=QQmlProperty(QObject * obj, QQmlContext * ctxt)
$constructor=|new3|QObject *,QQmlContext *

$prototype=QQmlProperty(QObject * obj, QQmlEngine * engine)
$constructor=|new4|QObject *,QQmlEngine *

$prototype=QQmlProperty(QObject * obj, const QString & name)
$constructor=|new5|QObject *,const QString &

$prototype=QQmlProperty(QObject * obj, const QString & name, QQmlContext * ctxt)
$constructor=|new6|QObject *,const QString &,QQmlContext *

$prototype=QQmlProperty(QObject * obj, const QString & name, QQmlEngine * engine)
$constructor=|new7|QObject *,const QString &,QQmlEngine *

$prototype=QQmlProperty(const QQmlProperty & other)
$constructor=|new8|const QQmlProperty &

//[1]QQmlProperty()
//[2]QQmlProperty(QObject * obj)
//[3]QQmlProperty(QObject * obj, QQmlContext * ctxt)
//[4]QQmlProperty(QObject * obj, QQmlEngine * engine)
//[5]QQmlProperty(QObject * obj, const QString & name)
//[6]QQmlProperty(QObject * obj, const QString & name, QQmlContext * ctxt)
//[7]QQmlProperty(QObject * obj, const QString & name, QQmlEngine * engine)
//[8]QQmlProperty(const QQmlProperty & other)

HB_FUNC_STATIC( QQMLPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLCONTEXT(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW3 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLENGINE(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW4 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW5 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW6 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLENGINE(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQQMLPROPERTY(1) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool connectNotifySignal(QObject * dest, const char * slot) const
$method=|bool|connectNotifySignal,connectNotifySignal1|QObject *,const char *

$prototype=bool connectNotifySignal(QObject * dest, int method) const
$method=|bool|connectNotifySignal,connectNotifySignal2|QObject *,int

//[1]bool connectNotifySignal(QObject * dest, const char * slot) const
//[2]bool connectNotifySignal(QObject * dest, int method) const

HB_FUNC_STATIC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool hasNotifySignal() const
$method=|bool|hasNotifySignal|

$prototype=int index() const
$method=|int|index|

$prototype=bool isDesignable() const
$method=|bool|isDesignable|

$prototype=bool isProperty() const
$method=|bool|isProperty|

$prototype=bool isResettable() const
$method=|bool|isResettable|

$prototype=bool isSignalProperty() const
$method=|bool|isSignalProperty|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=bool isWritable() const
$method=|bool|isWritable|

$prototype=QMetaMethod method() const
$method=|QMetaMethod|method|

$prototype=QString name() const
$method=|QString|name|

$prototype=bool needsNotifySignal() const
$method=|bool|needsNotifySignal|

$prototype=QObject * object() const
$method=|QObject *|object|

$prototype=QMetaProperty property() const
$method=|QMetaProperty|property|

$prototype=int propertyType() const
$method=|int|propertyType|

$prototype=PropertyTypeCategory propertyTypeCategory() const
$method=|QQmlProperty::PropertyTypeCategory|propertyTypeCategory|

$prototype=const char * propertyTypeName() const
$method=|const char *|propertyTypeName|

$prototype=QVariant read() const
$method=|QVariant|read,read1|

$prototype=static QVariant read(QObject * object, const QString & name)
$staticMethod=|QVariant|read,read2|QObject *,const QString &

$prototype=static QVariant read(QObject * object, const QString & name, QQmlContext * ctxt)
$staticMethod=|QVariant|read,read3|QObject *,const QString &,QQmlContext *

$prototype=static QVariant read(QObject * object, const QString & name, QQmlEngine * engine)
$staticMethod=|QVariant|read,read4|QObject *,const QString &,QQmlEngine *

//[1]QVariant read() const
//[2]QVariant read(QObject * object, const QString & name)
//[3]QVariant read(QObject * object, const QString & name, QQmlContext * ctxt)
//[4]QVariant read(QObject * object, const QString & name, QQmlEngine * engine)

HB_FUNC_STATIC( QQMLPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ2 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ3 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLENGINE(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_READ4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool reset() const
$method=|bool|reset|

$prototype=Type type() const
$method=|QQmlProperty::Type|type|

$prototype=bool write(const QVariant & value) const
$method=|bool|write,write1|const QVariant &

$prototype=static bool write(QObject * object, const QString & name, const QVariant & value)
$staticMethod=|bool|write,write2|QObject *,const QString &,const QVariant &

$prototype=static bool write(QObject * object, const QString & name, const QVariant & value, QQmlContext * ctxt)
$staticMethod=|bool|write,write3|QObject *,const QString &,const QVariant &,QQmlContext *

$prototype=static bool write(QObject * object, const QString & name, const QVariant & value, QQmlEngine * engine)
$staticMethod=|bool|write,write4|QObject *,const QString &,const QVariant &,QQmlEngine *

//[1]bool write(const QVariant & value) const
//[2]bool write(QObject * object, const QString & name, const QVariant & value)
//[3]bool write(QObject * object, const QString & name, const QVariant & value, QQmlContext * ctxt)
//[4]bool write(QObject * object, const QString & name, const QVariant & value, QQmlEngine * engine)

HB_FUNC_STATIC( QQMLPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE1 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE2 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQQMLCONTEXT(4) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE3 );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQQMLENGINE(4) )
  {
    HB_FUNC_EXEC( QQMLPROPERTY_WRITE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
