/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QAXAGGREGATED
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QAXOBJECT
#endif

CLASS QAxWidget INHERIT QWidget,QAxBase

   DATA class_id INIT Class_Id_QAxWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD createAggregate
   METHOD doVerb
   METHOD clear
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD asVariant
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall1
   METHOD dynamicCall2
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject1
   METHOD querySubObject2
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs
   METHOD onException
   METHOD onPropertyChanged
   METHOD onSignal
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAxWidget>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAxWidget>
#endif
#endif

#include <QStringList>

/*
QAxWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QAXWIDGET_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QAxWidget * o = new QAxWidget ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAxWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QAxWidget ( const QString & c, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QAXWIDGET_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QAxWidget * o = new QAxWidget ( par1, par2,  (Qt::WindowFlags) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAxWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QAxWidget ( IUnknown * iface, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QAXWIDGET_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  IUnknown * par1 = (IUnknown *) _qtxhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QAxWidget * o = new QAxWidget ( par1, par2,  (Qt::WindowFlags) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAxWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QAxWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QAxWidget ( const QString & c, QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[3]QAxWidget ( IUnknown * iface, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QAXWIDGET_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QAXWIDGET_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QAXWIDGET_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISPOINTER(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QAXWIDGET_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAXWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual QAxAggregated * createAggregate ()
*/
HB_FUNC_STATIC( QAXWIDGET_CREATEAGGREGATE )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAxAggregated * ptr = obj->createAggregate (  );
    _qt5xhb_createReturnClass ( ptr, "QAXAGGREGATED" );
  }
}


/*
bool doVerb ( const QString & verb )
*/
HB_FUNC_STATIC( QAXWIDGET_DOVERB )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->doVerb ( par1 ) );
  }
}


/*
virtual void clear ()
*/
HB_FUNC_STATIC( QAXWIDGET_CLEAR )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QAXWIDGET_MINIMUMSIZEHINT )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QAXWIDGET_SIZEHINT )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


// métodos da classe QAxBase, adicionados aqui, para
// resolver problemas na utilização dos métodos

/*
QVariant asVariant () const
*/
HB_FUNC_STATIC( QAXWIDGET_ASVARIANT )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->asVariant (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
QString control () const
*/
HB_FUNC_STATIC( QAXWIDGET_CONTROL )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->control (  ).toLatin1().data() );
  }
}


/*
void disableClassInfo ()
*/
HB_FUNC_STATIC( QAXWIDGET_DISABLECLASSINFO )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->disableClassInfo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void disableEventSink ()
*/
HB_FUNC_STATIC( QAXWIDGET_DISABLEEVENTSINK )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->disableEventSink (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void disableMetaObject ()
*/
HB_FUNC_STATIC( QAXWIDGET_DISABLEMETAOBJECT )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->disableMetaObject (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
HB_FUNC_STATIC( QAXWIDGET_DYNAMICCALL1 )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(4);
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(5);
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(6);
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(7);
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(8);
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(9);
    QVariant * ptr = new QVariant( obj->dynamicCall (  (const char *) par1, par2, par3, par4, par5, par6, par7, par8, par9 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
*/
HB_FUNC_STATIC( QAXWIDGET_DYNAMICCALL2 )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QVariant * ptr = new QVariant( obj->dynamicCall (  (const char *) par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


//[1]QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant dynamicCall ( const char * function, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXWIDGET_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    HB_FUNC_EXEC( QAXWIDGET_DYNAMICCALL1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QAXWIDGET_DYNAMICCALL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString generateDocumentation ()
*/
HB_FUNC_STATIC( QAXWIDGET_GENERATEDOCUMENTATION )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->generateDocumentation (  ).toLatin1().data() );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QAXWIDGET_ISNULL )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}



/*
virtual bool propertyWritable ( const char * prop ) const
*/
HB_FUNC_STATIC( QAXWIDGET_PROPERTYWRITABLE )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retl( obj->propertyWritable (  (const char *) par1 ) );
  }
}



/*
QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
HB_FUNC_STATIC( QAXWIDGET_QUERYSUBOBJECT1 )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(4);
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(5);
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(6);
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(7);
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(8);
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(9);
    QAxObject * ptr = obj->querySubObject (  (const char *) par1, par2, par3, par4, par5, par6, par7, par8, par9 );
    _qt5xhb_createReturnClass ( ptr, "QAXOBJECT" );
  }
}

/*
QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
*/
HB_FUNC_STATIC( QAXWIDGET_QUERYSUBOBJECT2 )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QAxObject * ptr = obj->querySubObject (  (const char *) par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QAXOBJECT" );
  }
}


//[1]QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXWIDGET_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    HB_FUNC_EXEC( QAXWIDGET_QUERYSUBOBJECT1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QAXWIDGET_QUERYSUBOBJECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setControl ( const QString & )
*/
HB_FUNC_STATIC( QAXWIDGET_SETCONTROL )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->setControl ( par1 ) );
  }
}



/*
virtual void setPropertyWritable ( const char * prop, bool ok )
*/
HB_FUNC_STATIC( QAXWIDGET_SETPROPERTYWRITABLE )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->setPropertyWritable (  (const char *) par1, (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList verbs () const
*/
HB_FUNC_STATIC( QAXWIDGET_VERBS )
{
  QAxWidget * obj = (QAxWidget *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->verbs (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}




#pragma ENDDUMP
