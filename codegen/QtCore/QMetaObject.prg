%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD classInfo
   METHOD classInfoCount
   METHOD classInfoOffset
   METHOD className
   METHOD constructor
   METHOD constructorCount
   METHOD enumerator
   METHOD enumeratorCount
   METHOD enumeratorOffset
   METHOD indexOfClassInfo
   METHOD indexOfConstructor
   METHOD indexOfEnumerator
   METHOD indexOfMethod
   METHOD indexOfProperty
   METHOD indexOfSignal
   METHOD indexOfSlot
   METHOD method
   METHOD methodCount
   METHOD methodOffset
%%   METHOD newInstance
   METHOD property
   METHOD propertyCount
   METHOD propertyOffset
   METHOD superClass
   METHOD userProperty
   METHOD checkConnectArgs
   METHOD connectSlotsByName
   METHOD invokeMethod
   METHOD normalizedSignature
   METHOD normalizedType

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QMetaClassInfo>
#include <QMetaMethod>
#include <QMetaEnum>
#include <QMetaProperty>
#include <QByteArray>

$deleteMethod

$prototype=QMetaClassInfo classInfo ( int index ) const
$method=|QMetaClassInfo|classInfo|int

$prototype=int classInfoCount () const
$method=|int|classInfoCount|

$prototype=int classInfoOffset () const
$method=|int|classInfoOffset|

$prototype=const char * className () const
$method=|const char *|className|

$prototype=QMetaMethod constructor ( int index ) const
$method=|QMetaMethod|constructor|int

$prototype=int constructorCount () const
$method=|int|constructorCount|

$prototype=QMetaEnum enumerator ( int index ) const
$method=|QMetaEnum|enumerator|int

$prototype=int enumeratorCount () const
$method=|int|enumeratorCount|

$prototype=int enumeratorOffset () const
$method=|int|enumeratorOffset|

$prototype=int indexOfClassInfo ( const char * name ) const
$method=|int|indexOfClassInfo|const char *

$prototype=int indexOfConstructor ( const char * constructor ) const
$method=|int|indexOfConstructor|const char *

$prototype=int indexOfEnumerator ( const char * name ) const
$method=|int|indexOfEnumerator|const char *

$prototype=int indexOfMethod ( const char * method ) const
$method=|int|indexOfMethod|const char *

$prototype=int indexOfProperty ( const char * name ) const
$method=|int|indexOfProperty|const char *

$prototype=int indexOfSignal ( const char * signal ) const
$method=|int|indexOfSignal|const char *

$prototype=int indexOfSlot ( const char * slot ) const
$method=|int|indexOfSlot|const char *

$prototype=QMetaMethod method ( int index ) const
$method=|QMetaMethod|method|int

$prototype=int methodCount () const
$method=|int|methodCount|

$prototype=int methodOffset () const
$method=|int|methodOffset|

$prototype=QObject * newInstance ( QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() ) const
%% TODO: implementar
%% $method=|QObject *|newInstance|QGenericArgument=QGenericArgument(0),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

$prototype=QMetaProperty property ( int index ) const
$method=|QMetaProperty|property|int

$prototype=int propertyCount () const
$method=|int|propertyCount|

$prototype=int propertyOffset () const
$method=|int|propertyOffset|

$prototype=const QMetaObject * superClass () const
$method=|const QMetaObject *|superClass|

$prototype=QMetaProperty userProperty () const
$method=|QMetaProperty|userProperty|

$prototype=static bool checkConnectArgs ( const char * signal, const char * method )
$staticMethod=|bool|checkConnectArgs|const char *,const char *

$prototype=static void connectSlotsByName ( QObject * object )
$staticMethod=|void|connectSlotsByName|QObject *

%% TODO: implementar

$prototype=static bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
%% $internalStaticMethod=|bool|invokeMethod,invokeMethod1|QObject *,const char *,Qt::ConnectionType,QGenericReturnArgument,QGenericArgument=QGenericArgument(0),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

$prototype=static bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
%% $internalStaticMethod=|bool|invokeMethod,invokeMethod2|QObject *,const char *,QGenericReturnArgument,QGenericArgument=QGenericArgument(0),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

$prototype=static bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
%% $internalStaticMethod=|bool|invokeMethod,invokeMethod3|QObject *,const char *,Qt::ConnectionType,QGenericArgument=QGenericArgument(0),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

$prototype=static bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
%% $internalStaticMethod=|bool|invokeMethod,invokeMethod4|QObject *,const char *,QGenericArgument=QGenericArgument(0),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

//[1]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[2]bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[3]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[4]bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )

HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD )
{
%%   if( ISBETWEEN(4,14) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && ISOBJECT(4) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) && (ISOBJECT(14)||ISNIL(14)) )
%%   {
%%     QMetaObject_invokeMethod1();
%%   }
%%   else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISOBJECT(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
%%   {
%%     QMetaObject_invokeMethod2();
%%   }
%%   else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
%%   {
%%     QMetaObject_invokeMethod3();
%%   }
%%   else if( ISBETWEEN(3,12) && ISQOBJECT(1) && ISCHAR(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
%%   {
%%     QMetaObject_invokeMethod4();
%%   }
%%   else
%%   {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
}

$prototype=static QByteArray normalizedSignature ( const char * method )
$staticMethod=|QByteArray|normalizedSignature|const char *

$prototype=static QByteArray normalizedType ( const char * type )
$staticMethod=|QByteArray|normalizedType|const char *

$extraMethods

#pragma ENDDUMP
