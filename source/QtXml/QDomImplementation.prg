/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDOMDOCUMENT
REQUEST QDOMDOCUMENTTYPE

CLASS QDomImplementation

   DATA pointer
   DATA class_id INIT Class_Id_QDomImplementation
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD createDocument
   METHOD createDocumentType
   METHOD hasFeature
   METHOD isNull
   METHOD invalidDataPolicy
   METHOD setInvalidDataPolicy
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomImplementation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDomImplementation>
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
#include <QDomImplementation>
#endif
#endif

/*
QDomImplementation ()
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomImplementation * o = new QDomImplementation (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomImplementation *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QDomImplementation ( const QDomImplementation & x )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomImplementation * par1 = (QDomImplementation *) _qtxhb_itemGetPtr(1);
  QDomImplementation * o = new QDomImplementation ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomImplementation *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QDomImplementation ()
//[2]QDomImplementation ( const QDomImplementation & x )

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMIMPLEMENTATION(1) )
  {
    HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMIMPLEMENTATION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomImplementation * obj = (QDomImplementation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomDocument createDocument ( const QString & nsURI, const QString & qName, const QDomDocumentType & doctype )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_CREATEDOCUMENT )
{
  QDomImplementation * obj = (QDomImplementation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QDomDocumentType * par3 = (QDomDocumentType *) _qtxhb_itemGetPtr(3);
    QDomDocument * ptr = new QDomDocument( obj->createDocument ( par1, par2, *par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENT", true );
  }
}


/*
QDomDocumentType createDocumentType ( const QString & qName, const QString & publicId, const QString & systemId )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_CREATEDOCUMENTTYPE )
{
  QDomImplementation * obj = (QDomImplementation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QDomDocumentType * ptr = new QDomDocumentType( obj->createDocumentType ( par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENTTYPE", true );
  }
}


/*
bool hasFeature ( const QString & feature, const QString & version ) const
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_HASFEATURE )
{
  QDomImplementation * obj = (QDomImplementation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->hasFeature ( par1, par2 ) );
  }
}


/*
bool isNull ()
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_ISNULL )
{
  QDomImplementation * obj = (QDomImplementation *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
static InvalidDataPolicy invalidDataPolicy ()
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_INVALIDDATAPOLICY )
{
  hb_retni( QDomImplementation::invalidDataPolicy (  ) );
}


/*
static void setInvalidDataPolicy ( InvalidDataPolicy policy )
*/
HB_FUNC_STATIC( QDOMIMPLEMENTATION_SETINVALIDDATAPOLICY )
{
  int par1 = hb_parni(1);
  QDomImplementation::setInvalidDataPolicy (  (QDomImplementation::InvalidDataPolicy) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEWFROM );
}

HB_FUNC_STATIC( QDOMIMPLEMENTATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDOMIMPLEMENTATION_NEWFROM );
}

HB_FUNC_STATIC( QDOMIMPLEMENTATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDOMIMPLEMENTATION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
