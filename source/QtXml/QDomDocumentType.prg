/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDOMNAMEDNODEMAP
#endif

CLASS QDomDocumentType INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomDocumentType
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD entities
   METHOD internalSubset
   METHOD name
   METHOD nodeType
   METHOD notations
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomDocumentType
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomDocumentType>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDomDocumentType>
#endif

/*
QDomDocumentType ()
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW1 )
{
  QDomDocumentType * o = new QDomDocumentType (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomDocumentType ( const QDomDocumentType & n )
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW2 )
{
  QDomDocumentType * par1 = (QDomDocumentType *) _qt5xhb_itemGetPtr(1);
  QDomDocumentType * o = new QDomDocumentType ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomDocumentType ()
//[2]QDomDocumentType ( const QDomDocumentType & n )

HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTTYPE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENTTYPE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMDOCUMENTTYPE_DELETE )
{
  QDomDocumentType * obj = (QDomDocumentType *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomNamedNodeMap entities () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_ENTITIES )
{
  QDomDocumentType * obj = (QDomDocumentType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNamedNodeMap * ptr = new QDomNamedNodeMap( obj->entities (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNAMEDNODEMAP", true );
  }
}


/*
QString internalSubset () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_INTERNALSUBSET )
{
  QDomDocumentType * obj = (QDomDocumentType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->internalSubset (  ).toLatin1().data() );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NAME )
{
  QDomDocumentType * obj = (QDomDocumentType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NODETYPE )
{
  QDomDocumentType * obj = (QDomDocumentType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType (  ) );
  }
}


/*
QDomNamedNodeMap notations () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_NOTATIONS )
{
  QDomDocumentType * obj = (QDomDocumentType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomNamedNodeMap * ptr = new QDomNamedNodeMap( obj->notations (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMNAMEDNODEMAP", true );
  }
}


/*
QString publicId () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_PUBLICID )
{
  QDomDocumentType * obj = (QDomDocumentType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->publicId (  ).toLatin1().data() );
  }
}


/*
QString systemId () const
*/
HB_FUNC_STATIC( QDOMDOCUMENTTYPE_SYSTEMID )
{
  QDomDocumentType * obj = (QDomDocumentType *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->systemId (  ).toLatin1().data() );
  }
}



#pragma ENDDUMP
