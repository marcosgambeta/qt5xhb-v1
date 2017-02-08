/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QAXSCRIPT

CLASS QAxScriptManager INHERIT QObject

   DATA class_id INIT Class_Id_QAxScriptManager
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addObject1
   METHOD addObject2
   METHOD addObject
   METHOD call1
   METHOD call2
   METHOD call
   METHOD functions
   METHOD load1
   METHOD load2
   METHOD load
   METHOD script
   METHOD scriptNames
   METHOD registerEngine
   METHOD scriptFileFilter
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxScriptManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAxScriptManager>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAxScriptManager>
#endif
#endif

#include <QStringList>

/*
QAxScriptManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QAxScriptManager * o = new QAxScriptManager ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAxScriptManager *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QAXSCRIPTMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addObject ( QAxBase * object )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_ADDOBJECT1 )
{
  QAxScriptManager * obj = (QAxScriptManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAxBase * par1 = (QAxBase *) _qtxhb_itemGetPtr(1);
    obj->addObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addObject ( QObject * object )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_ADDOBJECT2 )
{
  QAxScriptManager * obj = (QAxScriptManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->addObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addObject ( QAxBase * object )
//[2]void addObject ( QObject * object )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_ADDOBJECT )
{
  if( ISNUMPAR(1) && ISQAXBASE(1) )
  {
    HB_FUNC_EXEC( QAXSCRIPTMANAGER_ADDOBJECT1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QAXSCRIPTMANAGER_ADDOBJECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_CALL1 )
{
  QAxScriptManager * obj = (QAxScriptManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(4);
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(5);
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(6);
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(7);
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(8);
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(9);
    QVariant * ptr = new QVariant( obj->call ( par1, par2, par3, par4, par5, par6, par7, par8, par9 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant call ( const QString & function, QList<QVariant> & arguments )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_CALL2 )
{
  QAxScriptManager * obj = (QAxScriptManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QVariant * ptr = new QVariant( obj->call ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


//[1]QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant call ( const QString & function, QList<QVariant> & arguments )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_CALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    HB_FUNC_EXEC( QAXSCRIPTMANAGER_CALL1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QAXSCRIPTMANAGER_CALL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList functions ( QAxScript::FunctionFlags flags = QAxScript::FunctionNames ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_FUNCTIONS )
{
  QAxScriptManager * obj = (QAxScriptManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QAxScript::FunctionNames : hb_parni(1);
    QStringList strl = obj->functions (  (QAxScript::FunctionFlags) par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QAxScript * load ( const QString & code, const QString & name, const QString & language )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_LOAD1 )
{
  QAxScriptManager * obj = (QAxScriptManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QAxScript * ptr = obj->load ( par1, par2, par3 );
    _qt4xhb_createReturnClass ( ptr, "QAXSCRIPT" );
  }
}

/*
QAxScript * load ( const QString & file, const QString & name )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_LOAD2 )
{
  QAxScriptManager * obj = (QAxScriptManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QAxScript * ptr = obj->load ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QAXSCRIPT" );
  }
}


//[1]QAxScript * load ( const QString & code, const QString & name, const QString & language )
//[2]QAxScript * load ( const QString & file, const QString & name )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_LOAD )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QAXSCRIPTMANAGER_LOAD1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QAXSCRIPTMANAGER_LOAD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAxScript * script ( const QString & name ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPT )
{
  QAxScriptManager * obj = (QAxScriptManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QAxScript * ptr = obj->script ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QAXSCRIPT" );
  }
}


/*
QStringList scriptNames () const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTNAMES )
{
  QAxScriptManager * obj = (QAxScriptManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->scriptNames (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
static bool registerEngine ( const QString & name, const QString & extension, const QString & code = QString() )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_REGISTERENGINE )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  hb_retl( QAxScriptManager::registerEngine ( par1, par2, par3 ) );
}


/*
static QString scriptFileFilter ()
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTFILEFILTER )
{
  hb_retc( (const char *) QAxScriptManager::scriptFileFilter (  ).toLatin1().data() );
}




#pragma ENDDUMP
