$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAMETHOD
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QVARIANT
#endif

CLASS QDeclarativeProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
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
   METHOD reset
   METHOD type
   METHOD read
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

/*
QDeclarativeProperty ()
*/
$internalConstructor=|new1|

/*
QDeclarativeProperty ( QObject * obj )
*/
$internalConstructor=|new2|QObject *

/*
QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
*/
$internalConstructor=|new3|QObject *,QDeclarativeContext *

/*
QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
*/
$internalConstructor=|new4|QObject *,QDeclarativeEngine *

/*
QDeclarativeProperty ( QObject * obj, const QString & name )
*/
$internalConstructor=|new5|QObject *,const QString &

/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
*/
$internalConstructor=|new6|QObject *,const QString &,QDeclarativeContext *

/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
*/
$internalConstructor=|new7|QObject *,const QString &,QDeclarativeEngine *

/*
QDeclarativeProperty ( const QDeclarativeProperty & other )
*/
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

/*
bool connectNotifySignal ( QObject * dest, const char * slot ) const
*/
$internalMethod=|bool|connectNotifySignal,connectNotifySignal1|QObject *,const char *

/*
bool connectNotifySignal ( QObject * dest, int method ) const
*/
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

/*
bool hasNotifySignal () const
*/
$method=|bool|hasNotifySignal|

/*
int index () const
*/
$method=|int|index|

/*
bool isDesignable () const
*/
$method=|bool|isDesignable|

/*
bool isProperty () const
*/
$method=|bool|isProperty|

/*
bool isResettable () const
*/
$method=|bool|isResettable|

/*
bool isSignalProperty () const
*/
$method=|bool|isSignalProperty|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool isWritable () const
*/
$method=|bool|isWritable|

/*
QMetaMethod method () const
*/
$method=|QMetaMethod|method|

/*
QString name () const
*/
$method=|QString|name|

/*
bool needsNotifySignal () const
*/
$method=|bool|needsNotifySignal|

/*
QObject * object () const
*/
$method=|QObject *|object|

/*
QMetaProperty property () const
*/
$method=|QMetaProperty|property|

/*
int propertyType () const
*/
$method=|int|propertyType|

/*
PropertyTypeCategory propertyTypeCategory () const
*/
$method=|QDeclarativeProperty::PropertyTypeCategory|propertyTypeCategory|

/*
const char * propertyTypeName () const
*/
$method=|const char *|propertyTypeName|

/*
bool reset () const
*/
$method=|bool|reset|

/*
Type type () const
*/
$method=|QDeclarativeProperty::Type|type|

/*
QVariant read () const
*/
$internalMethod=|QVariant|read,read1|

/*
static QVariant read ( QObject * object, const QString & name )
*/
$internalStaticMethod=|QVariant|read,read2|QObject *,const QString &

/*
static QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
*/
$internalStaticMethod=|QVariant|read,read3|QObject *,const QString &,QDeclarativeContext *

/*
static QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )
*/
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

/*
bool write ( const QVariant & value ) const
*/
$internalMethod=|bool|write,write1|const QVariant &

/*
static bool write ( QObject * object, const QString & name, const QVariant & value )
*/
$internalStaticMethod=|bool|write,write2|QObject *,const QString &,const QVariant &

/*
static bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
*/
$internalStaticMethod=|bool|write,write3|QObject *,const QString &,const QVariant &,QDeclarativeContext *

/*
static bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )
*/
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

$extraMethods

#pragma ENDDUMP
