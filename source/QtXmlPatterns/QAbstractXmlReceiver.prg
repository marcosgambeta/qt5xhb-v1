/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAbstractXmlReceiver

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD namespaceBinding
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractXmlReceiver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractXmlReceiver>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractXmlReceiver>
#endif


HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_DELETE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void atomicValue ( const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ATOMICVALUE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
    obj->atomicValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void attribute ( const QXmlName & name, const QStringRef & value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ATTRIBUTE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qt5xhb_itemGetPtr(1);
    QStringRef * par2 = (QStringRef *) _qt5xhb_itemGetPtr(2);
    obj->attribute ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void characters ( const QStringRef & value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_CHARACTERS )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * par1 = (QStringRef *) _qt5xhb_itemGetPtr(1);
    obj->characters ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void comment ( const QString & value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_COMMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->comment ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endDocument () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ENDDOCUMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endElement () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ENDELEMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endElement ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endOfSequence () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_ENDOFSEQUENCE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endOfSequence ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void namespaceBinding ( const QXmlName & name ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_NAMESPACEBINDING )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qt5xhb_itemGetPtr(1);
    obj->namespaceBinding ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void processingInstruction ( const QXmlName & target, const QString & value ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_PROCESSINGINSTRUCTION )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qt5xhb_itemGetPtr(1);
    obj->processingInstruction ( *par1, PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startDocument () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_STARTDOCUMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startElement ( const QXmlName & name ) = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_STARTELEMENT )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) _qt5xhb_itemGetPtr(1);
    obj->startElement ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startOfSequence () = 0
*/
HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_STARTOFSEQUENCE )
{
  QAbstractXmlReceiver * obj = (QAbstractXmlReceiver *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startOfSequence ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_NEWFROM )
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

HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QABSTRACTXMLRECEIVER_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QABSTRACTXMLRECEIVER_NEWFROM );
}

HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QABSTRACTXMLRECEIVER_SETSELFDESTRUCTION )
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