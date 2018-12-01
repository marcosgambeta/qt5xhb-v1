%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQmlProperty()
$internalConstructor=|new1|

$prototype=QQmlProperty(QObject * obj)
$internalConstructor=|new2|QObject *

$prototype=QQmlProperty(QObject * obj, QQmlContext * ctxt)
$internalConstructor=|new3|QObject *,QQmlContext *

$prototype=QQmlProperty(QObject * obj, QQmlEngine * engine)
$internalConstructor=|new4|QObject *,QQmlEngine *

$prototype=QQmlProperty(QObject * obj, const QString & name)
$internalConstructor=|new5|QObject *,const QString &

$prototype=QQmlProperty(QObject * obj, const QString & name, QQmlContext * ctxt)
$internalConstructor=|new6|QObject *,const QString &,QQmlContext *

$prototype=QQmlProperty(QObject * obj, const QString & name, QQmlEngine * engine)
$internalConstructor=|new7|QObject *,const QString &,QQmlEngine *

$prototype=QQmlProperty(const QQmlProperty & other)
$internalConstructor=|new8|const QQmlProperty &

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
    QQmlProperty_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QQmlProperty_new2();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLCONTEXT(2) )
  {
    QQmlProperty_new3();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLENGINE(2) )
  {
    QQmlProperty_new4();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QQmlProperty_new5();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    QQmlProperty_new6();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLENGINE(3) )
  {
    QQmlProperty_new7();
  }
  else if( ISNUMPAR(1) && ISQQMLPROPERTY(1) )
  {
    QQmlProperty_new8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool connectNotifySignal(QObject * dest, const char * slot) const
$internalMethod=|bool|connectNotifySignal,connectNotifySignal1|QObject *,const char *

$prototype=bool connectNotifySignal(QObject * dest, int method) const
$internalMethod=|bool|connectNotifySignal,connectNotifySignal2|QObject *,int

//[1]bool connectNotifySignal(QObject * dest, const char * slot) const
//[2]bool connectNotifySignal(QObject * dest, int method) const

HB_FUNC_STATIC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QQmlProperty_connectNotifySignal1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QQmlProperty_connectNotifySignal2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=connectNotifySignal

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
$internalMethod=|QVariant|read,read1|

$prototype=static QVariant read(QObject * object, const QString & name)
$internalStaticMethod=|QVariant|read,read2|QObject *,const QString &

$prototype=static QVariant read(QObject * object, const QString & name, QQmlContext * ctxt)
$internalStaticMethod=|QVariant|read,read3|QObject *,const QString &,QQmlContext *

$prototype=static QVariant read(QObject * object, const QString & name, QQmlEngine * engine)
$internalStaticMethod=|QVariant|read,read4|QObject *,const QString &,QQmlEngine *

//[1]QVariant read() const
//[2]QVariant read(QObject * object, const QString & name)
//[3]QVariant read(QObject * object, const QString & name, QQmlContext * ctxt)
//[4]QVariant read(QObject * object, const QString & name, QQmlEngine * engine)

HB_FUNC_STATIC( QQMLPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    QQmlProperty_read1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QQmlProperty_read2();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    QQmlProperty_read3();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQQMLENGINE(3) )
  {
    QQmlProperty_read4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=read

$prototype=bool reset() const
$method=|bool|reset|

$prototype=Type type() const
$method=|QQmlProperty::Type|type|

$prototype=bool write(const QVariant & value) const
$internalMethod=|bool|write,write1|const QVariant &

$prototype=static bool write(QObject * object, const QString & name, const QVariant & value)
$internalStaticMethod=|bool|write,write2|QObject *,const QString &,const QVariant &

$prototype=static bool write(QObject * object, const QString & name, const QVariant & value, QQmlContext * ctxt)
$internalStaticMethod=|bool|write,write3|QObject *,const QString &,const QVariant &,QQmlContext *

$prototype=static bool write(QObject * object, const QString & name, const QVariant & value, QQmlEngine * engine)
$internalStaticMethod=|bool|write,write4|QObject *,const QString &,const QVariant &,QQmlEngine *

//[1]bool write(const QVariant & value) const
//[2]bool write(QObject * object, const QString & name, const QVariant & value)
//[3]bool write(QObject * object, const QString & name, const QVariant & value, QQmlContext * ctxt)
//[4]bool write(QObject * object, const QString & name, const QVariant & value, QQmlEngine * engine)

HB_FUNC_STATIC( QQMLPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QQmlProperty_write1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
  {
    QQmlProperty_write2();
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQQMLCONTEXT(4) )
  {
    QQmlProperty_write3();
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQQMLENGINE(4) )
  {
    QQmlProperty_write4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=write

$extraMethods

#pragma ENDDUMP
