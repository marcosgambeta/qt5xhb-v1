%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativeProperty ()
$internalConstructor=|new1|

$prototype=QDeclarativeProperty ( QObject * obj )
$internalConstructor=|new2|QObject *

$prototype=QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
$internalConstructor=|new3|QObject *,QDeclarativeContext *

$prototype=QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
$internalConstructor=|new4|QObject *,QDeclarativeEngine *

$prototype=QDeclarativeProperty ( QObject * obj, const QString & name )
$internalConstructor=|new5|QObject *,const QString &

$prototype=QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
$internalConstructor=|new6|QObject *,const QString &,QDeclarativeContext *

$prototype=QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
$internalConstructor=|new7|QObject *,const QString &,QDeclarativeEngine *

$prototype=QDeclarativeProperty ( const QDeclarativeProperty & other )
$internalConstructor=|new8|const QDeclarativeProperty &

//[1]QDeclarativeProperty ()
//[2]QDeclarativeProperty ( QObject * obj )
//[3]QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
//[4]QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
//[5]QDeclarativeProperty ( QObject * obj, const QString & name )
//[6]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
//[7]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
//[8]QDeclarativeProperty ( const QDeclarativeProperty & other )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeProperty_new1();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEPROPERTY(1) )
  {
    QDeclarativeProperty_new8();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QDeclarativeProperty_new2();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVECONTEXT(2) )
  {
    QDeclarativeProperty_new3();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVEENGINE(2) )
  {
    QDeclarativeProperty_new4();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QDeclarativeProperty_new5();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    QDeclarativeProperty_new6();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    QDeclarativeProperty_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool connectNotifySignal ( QObject * dest, const char * slot ) const
$internalMethod=|bool|connectNotifySignal,connectNotifySignal1|QObject *,const char *

$prototype=bool connectNotifySignal ( QObject * dest, int method ) const
$internalMethod=|bool|connectNotifySignal,connectNotifySignal2|QObject *,int

//[1]bool connectNotifySignal ( QObject * dest, const char * slot ) const
//[2]bool connectNotifySignal ( QObject * dest, int method ) const

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QDeclarativeProperty_connectNotifySignal1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QDeclarativeProperty_connectNotifySignal2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=connectNotifySignal

$prototype=bool hasNotifySignal () const
$method=|bool|hasNotifySignal|

$prototype=int index () const
$method=|int|index|

$prototype=bool isDesignable () const
$method=|bool|isDesignable|

$prototype=bool isProperty () const
$method=|bool|isProperty|

$prototype=bool isResettable () const
$method=|bool|isResettable|

$prototype=bool isSignalProperty () const
$method=|bool|isSignalProperty|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool isWritable () const
$method=|bool|isWritable|

$prototype=QMetaMethod method () const
$method=|QMetaMethod|method|

$prototype=QString name () const
$method=|QString|name|

$prototype=bool needsNotifySignal () const
$method=|bool|needsNotifySignal|

$prototype=QObject * object () const
$method=|QObject *|object|

$prototype=QMetaProperty property () const
$method=|QMetaProperty|property|

$prototype=int propertyType () const
$method=|int|propertyType|

$prototype=PropertyTypeCategory propertyTypeCategory () const
$method=|QDeclarativeProperty::PropertyTypeCategory|propertyTypeCategory|

$prototype=const char * propertyTypeName () const
$method=|const char *|propertyTypeName|

$prototype=bool reset () const
$method=|bool|reset|

$prototype=Type type () const
$method=|QDeclarativeProperty::Type|type|

$prototype=QVariant read () const
$internalMethod=|QVariant|read,read1|

$prototype=static QVariant read ( QObject * object, const QString & name )
$internalStaticMethod=|QVariant|read,read2|QObject *,const QString &

$prototype=static QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
$internalStaticMethod=|QVariant|read,read3|QObject *,const QString &,QDeclarativeContext *

$prototype=static QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )
$internalStaticMethod=|QVariant|read,read4|QObject *,const QString &,QDeclarativeEngine *

//[1]QVariant read () const
//[2]QVariant read ( QObject * object, const QString & name )
//[3]QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
//[4]QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeProperty_read1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QDeclarativeProperty_read2();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    QDeclarativeProperty_read3();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    QDeclarativeProperty_read4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=read

$prototype=bool write ( const QVariant & value ) const
$internalMethod=|bool|write,write1|const QVariant &

$prototype=static bool write ( QObject * object, const QString & name, const QVariant & value )
$internalStaticMethod=|bool|write,write2|QObject *,const QString &,const QVariant &

$prototype=static bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
$internalStaticMethod=|bool|write,write3|QObject *,const QString &,const QVariant &,QDeclarativeContext *

$prototype=static bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )
$internalStaticMethod=|bool|write,write4|QObject *,const QString &,const QVariant &,QDeclarativeEngine *

//[1]bool write ( const QVariant & value ) const
//[2]bool write ( QObject * object, const QString & name, const QVariant & value )
//[3]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
//[4]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QDeclarativeProperty_write1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
  {
    QDeclarativeProperty_write2();
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVECONTEXT(4) )
  {
    QDeclarativeProperty_write3();
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVEENGINE(4) )
  {
    QDeclarativeProperty_write4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=write

$extraMethods

#pragma ENDDUMP
