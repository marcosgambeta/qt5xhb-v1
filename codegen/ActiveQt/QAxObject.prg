$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAxObject INHERIT QObject,QAxBase

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD doVerb
   METHOD asVariant
   METHOD clear
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs

   METHOD onException
   METHOD onPropertyChanged
   METHOD onSignal

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QAxObject ( QObject * parent = 0 )
*/
void QAxObject_new1 ()
{
  QAxObject * o = new QAxObject ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAxObject ( const QString & c, QObject * parent = 0 )
*/
void QAxObject_new2 ()
{
  QAxObject * o = new QAxObject ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAxObject ( IUnknown * iface, QObject * parent = 0 )
*/
void QAxObject_new3 ()
{
  IUnknown * par1 = (IUnknown *) _qt5xhb_itemGetPtr(1);
  QAxObject * o = new QAxObject ( par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QAxObject ( QObject * parent = 0 )
//[2]QAxObject ( const QString & c, QObject * parent = 0 )
//[3]QAxObject ( IUnknown * iface, QObject * parent = 0 )

HB_FUNC_STATIC( QAXOBJECT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QAxObject_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QAxObject_new2();
  }
  else if( ISBETWEEN(1,2) && ISPOINTER(1) && ISOPTQOBJECT(2) )
  {
    QAxObject_new3(); // TODO: revisar parametro 'IUnknown * iface'
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool doVerb ( const QString & verb )
*/
$method=|bool|doVerb|const QString &

// QAxBase methods - begin

// métodos da classe QAxBase, adicionados aqui, para
// resolver problemas na utilização dos métodos

/*
QVariant asVariant () const
*/
HB_FUNC_STATIC( QAXOBJECT_ASVARIANT )
{
  QAxObject * obj = (QAxObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->asVariant () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
virtual void clear ()
*/
$method=|void|clear|

/*
QString control () const
*/
$method=|QString|control|

/*
void disableClassInfo ()
*/
$method=|void|disableClassInfo|

/*
void disableEventSink ()
*/
$method=|void|disableEventSink|

/*
void disableMetaObject ()
*/
$method=|void|disableMetaObject|

/*
QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxObject_dynamicCall1 ()
{
  QAxObject * obj = (QAxObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(4);
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(5);
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(6);
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(7);
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(8);
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(9);
    QVariant * ptr = new QVariant( obj->dynamicCall ( PCONSTCHAR(1), par2, par3, par4, par5, par6, par7, par8, par9 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
*/
void QAxObject_dynamicCall2 ()
{
  QAxObject * obj = (QAxObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->dynamicCall ( PCONSTCHAR(1), PQVARIANTLIST(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

//[1]QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant dynamicCall ( const char * function, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXOBJECT_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxObject_dynamicCall1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxObject_dynamicCall2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString generateDocumentation ()
*/
$method=|QString|generateDocumentation|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
virtual bool propertyWritable ( const char * prop ) const
*/
$method=|bool|propertyWritable|const char *

/*
QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxObject_querySubObject1 ()
{
  QAxObject * obj = (QAxObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(4);
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(5);
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(6);
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(7);
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(8);
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(9);
    QAxObject * ptr = obj->querySubObject ( PCONSTCHAR(1), par2, par3, par4, par5, par6, par7, par8, par9 );
    _qt5xhb_createReturnClass ( ptr, "QAXOBJECT" );
  }
}

/*
QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
*/
void QAxObject_querySubObject2 ()
{
  QAxObject * obj = (QAxObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAxObject * ptr = obj->querySubObject ( PCONSTCHAR(1), PQVARIANTLIST(2) );
    _qt5xhb_createReturnClass ( ptr, "QAXOBJECT" );
  }
}

//[1]QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXOBJECT_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxObject_querySubObject1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxObject_querySubObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setControl ( const QString & )
*/
$method=|bool|setControl|const QString &

/*
virtual void setPropertyWritable ( const char * prop, bool ok )
*/
$method=|void|setPropertyWritable|const char *,bool

/*
QStringList verbs () const
*/
$method=|QStringList|verbs|

// QAxBase methods - end

#pragma ENDDUMP
