/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDnsLookup INHERIT QObject

   DATA class_id INIT Class_Id_QDnsLookup
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD error
   METHOD errorString
   METHOD isFinished
   METHOD name
   METHOD setName
   METHOD setType
   METHOD type
   METHOD abort
   METHOD lookup
   METHOD onFinished
   METHOD onNameChanged
   METHOD onTypeChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDnsLookup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDnsLookup>
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
#include <QDnsLookup>
#endif
#endif

/*
QDnsLookup(QObject * parent = 0)
*/
HB_FUNC_STATIC( QDNSLOOKUP_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QDnsLookup * o = new QDnsLookup ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDnsLookup *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDnsLookup(Type type, const QString & name, QObject * parent = 0)
*/
HB_FUNC_STATIC( QDNSLOOKUP_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QDnsLookup * o = new QDnsLookup (  (QDnsLookup::Type) par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDnsLookup *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDnsLookup(QObject * parent = 0)
//[2]QDnsLookup(Type type, const QString & name, QObject * parent = 0)

HB_FUNC_STATIC( QDNSLOOKUP_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDNSLOOKUP_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDNSLOOKUP_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDNSLOOKUP_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDnsLookup * obj = (QDnsLookup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Error error() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_ERROR )
{
  QDnsLookup * obj = (QDnsLookup *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_ERRORSTRING )
{
  QDnsLookup * obj = (QDnsLookup *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}



/*
bool isFinished() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_ISFINISHED )
{
  QDnsLookup * obj = (QDnsLookup *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinished (  ) );
  }
}



/*
QString name() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_NAME )
{
  QDnsLookup * obj = (QDnsLookup *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}





/*
void setName(const QString & name)
*/
HB_FUNC_STATIC( QDNSLOOKUP_SETNAME )
{
  QDnsLookup * obj = (QDnsLookup *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType(QDnsLookup::Type)
*/
HB_FUNC_STATIC( QDNSLOOKUP_SETTYPE )
{
  QDnsLookup * obj = (QDnsLookup *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType (  (QDnsLookup::Type) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
Type type() const
*/
HB_FUNC_STATIC( QDNSLOOKUP_TYPE )
{
  QDnsLookup * obj = (QDnsLookup *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
void abort()
*/
HB_FUNC_STATIC( QDNSLOOKUP_ABORT )
{
  QDnsLookup * obj = (QDnsLookup *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void lookup()
*/
HB_FUNC_STATIC( QDNSLOOKUP_LOOKUP )
{
  QDnsLookup * obj = (QDnsLookup *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->lookup (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
