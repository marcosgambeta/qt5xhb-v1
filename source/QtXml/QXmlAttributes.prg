/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QXmlAttributes

   DATA pointer
   //DATA class_id INIT Class_Id_QXmlAttributes
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD count
   METHOD index1
   METHOD index3
   METHOD index
   METHOD length
   METHOD localName
   METHOD qName
   METHOD type1
   METHOD type2
   METHOD type3
   METHOD type
   METHOD uri
   METHOD value1
   METHOD value2
   METHOD value4
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlAttributes
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlAttributes>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlAttributes>
#endif

/*
QXmlAttributes ()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_NEW )
{
  QXmlAttributes * o = new QXmlAttributes (  );
  _qt5xhb_storePointerAndFlag( o, true );
}


HB_FUNC_STATIC( QXMLATTRIBUTES_DELETE )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
void append ( const QString & qName, const QString & uri, const QString & localPart, const QString & value )
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_APPEND )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    QString par3 = QLatin1String( hb_parc(3) );
    QString par4 = QLatin1String( hb_parc(4) );
    obj->append ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_CLEAR )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_COUNT )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
int index ( const QString & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->index ( par1 ) );
  }
}

/*
int index ( const QString & uri, const QString & localPart ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retni( obj->index ( par1, par2 ) );
  }
}


//[1]int index ( const QString & qName ) const
//[2]int index ( const QLatin1String & qName ) const
//[3]int index ( const QString & uri, const QString & localPart ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX1 );
  }
  //else if( ISNUMPAR(1) && ISOBJECT(1) )
  //{
  //  HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX2 );
  //}
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int length () const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_LENGTH )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length (  ) );
  }
}


/*
QString localName ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_LOCALNAME )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->localName ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString qName ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_QNAME )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->qName ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString type ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->type ( (int) hb_parni(1) ).toLatin1().data() );
  }
}

/*
QString type ( const QString & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->type ( par1 ).toLatin1().data() );
  }
}

/*
QString type ( const QString & uri, const QString & localName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->type ( par1, par2 ).toLatin1().data() );
  }
}


//[1]QString type ( int index ) const
//[2]QString type ( const QString & qName ) const
//[3]QString type ( const QString & uri, const QString & localName ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString uri ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_URI )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->uri ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString value ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->value ( (int) hb_parni(1) ).toLatin1().data() );
  }
}

/*
QString value ( const QString & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->value ( par1 ).toLatin1().data() );
  }
}

/*
QString value ( const QString & uri, const QString & localName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE4 )
{
  QXmlAttributes * obj = (QXmlAttributes *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retc( (const char *) obj->value ( par1, par2 ).toLatin1().data() );
  }
}


//[1]QString value ( int index ) const
//[2]QString value ( const QString & qName ) const
//[3]QString value ( const QLatin1String & qName ) const
//[4]QString value ( const QString & uri, const QString & localName ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE2 );
  }
  //else if( ISNUMPAR(1) && ISOBJECT(1) )
  //{
  //  HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE3 );
  //}
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QXMLATTRIBUTES_NEWFROM )
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

HB_FUNC_STATIC( QXMLATTRIBUTES_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLATTRIBUTES_NEWFROM );
}

HB_FUNC_STATIC( QXMLATTRIBUTES_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLATTRIBUTES_NEWFROM );
}

HB_FUNC_STATIC( QXMLATTRIBUTES_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLATTRIBUTES_SETSELFDESTRUCTION )
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