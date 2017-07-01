/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QXmlFormatter INHERIT QXmlSerializer

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD indentationDepth
   METHOD setIndentationDepth
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlFormatter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlFormatter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlFormatter>
#endif

/*
QXmlFormatter ( const QXmlQuery & query, QIODevice * outputDevice )
*/
HB_FUNC_STATIC( QXMLFORMATTER_NEW )
{
  QXmlFormatter * o = new QXmlFormatter ( *PQXMLQUERY(1), PQIODEVICE(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}


HB_FUNC_STATIC( QXMLFORMATTER_DELETE )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int indentationDepth () const
*/
HB_FUNC_STATIC( QXMLFORMATTER_INDENTATIONDEPTH )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->indentationDepth () );
  }
}


/*
void setIndentationDepth ( int depth )
*/
HB_FUNC_STATIC( QXMLFORMATTER_SETINDENTATIONDEPTH )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndentationDepth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void atomicValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_ATOMICVALUE )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->atomicValue ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void attribute ( const QXmlName & name, const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_ATTRIBUTE )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * par2 = (QStringRef *) _qt5xhb_itemGetPtr(2);
    obj->attribute ( *PQXMLNAME(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void characters ( const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_CHARACTERS )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * par1 = (QStringRef *) _qt5xhb_itemGetPtr(1);
    obj->characters ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void comment ( const QString & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_COMMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->comment ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endDocument ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_ENDDOCUMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endElement ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_ENDELEMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endElement ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endOfSequence ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_ENDOFSEQUENCE )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endOfSequence ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void processingInstruction ( const QXmlName & name, const QString & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_PROCESSINGINSTRUCTION )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->processingInstruction ( *PQXMLNAME(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startDocument ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_STARTDOCUMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startElement ( const QXmlName & name )
*/
HB_FUNC_STATIC( QXMLFORMATTER_STARTELEMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startElement ( *PQXMLNAME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startOfSequence ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_STARTOFSEQUENCE )
{
  QXmlFormatter * obj = (QXmlFormatter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startOfSequence ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
