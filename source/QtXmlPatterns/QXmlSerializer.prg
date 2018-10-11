/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QTEXTCODEC
#endif

CLASS QXmlSerializer INHERIT QAbstractXmlReceiver

   METHOD new
   METHOD delete
   METHOD codec
   METHOD outputDevice
   METHOD setCodec
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

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlSerializer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlSerializer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlSerializer>
#endif

#include <QIODevice>

/*
QXmlSerializer ( const QXmlQuery & query, QIODevice * outputDevice )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_NEW )
{
  if( ISNUMPAR(2) && ISQXMLQUERY(1) && ISQIODEVICE(2) )
  {
    QXmlSerializer * o = new QXmlSerializer ( *PQXMLQUERY(1), PQIODEVICE(2) );
    _qt5xhb_returnNewObject( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSERIALIZER_DELETE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

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
const QTextCodec * codec () const
*/
HB_FUNC_STATIC( QXMLSERIALIZER_CODEC )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      const QTextCodec * ptr = obj->codec ();
      _qt5xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QIODevice * outputDevice () const
*/
HB_FUNC_STATIC( QXMLSERIALIZER_OUTPUTDEVICE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIODevice * ptr = obj->outputDevice ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QIODEVICE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCodec ( const QTextCodec * outputCodec )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_SETCODEC )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
    {
      obj->setCodec ( PQTEXTCODEC(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void atomicValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ATOMICVALUE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVARIANT(1) )
    {
      obj->atomicValue ( *PQVARIANT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void attribute ( const QXmlName & name, const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ATTRIBUTE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQSTRINGREF(2) )
    {
      obj->attribute ( *PQXMLNAME(1), *PQSTRINGREF(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void characters ( const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_CHARACTERS )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSTRINGREF(1) )
    {
      obj->characters ( *PQSTRINGREF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void comment ( const QString & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_COMMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->comment ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void endDocument ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ENDDOCUMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->endDocument ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void endElement ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ENDELEMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->endElement ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void endOfSequence ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ENDOFSEQUENCE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->endOfSequence ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void namespaceBinding ( const QXmlName & nb )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_NAMESPACEBINDING )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLNAME(1) )
    {
      obj->namespaceBinding ( *PQXMLNAME(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void processingInstruction ( const QXmlName & name, const QString & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_PROCESSINGINSTRUCTION )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQXMLNAME(1) && ISCHAR(2) )
    {
      obj->processingInstruction ( *PQXMLNAME(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void startDocument ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_STARTDOCUMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->startDocument ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void startElement ( const QXmlName & name )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_STARTELEMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLNAME(1) )
    {
      obj->startElement ( *PQXMLNAME(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void startOfSequence ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_STARTOFSEQUENCE )
{
  QXmlSerializer * obj = (QXmlSerializer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->startOfSequence ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
