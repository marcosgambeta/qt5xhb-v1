/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QDomProcessingInstruction INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomProcessingInstruction
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD data
   METHOD nodeType
   METHOD setData
   METHOD target
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomProcessingInstruction
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomProcessingInstruction>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDomProcessingInstruction>
#endif

/*
QDomProcessingInstruction ()
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW1 )
{
  QDomProcessingInstruction * o = new QDomProcessingInstruction (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomProcessingInstruction ( const QDomProcessingInstruction & x )
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW2 )
{
  QDomProcessingInstruction * par1 = (QDomProcessingInstruction *) _qt5xhb_itemGetPtr(1);
  QDomProcessingInstruction * o = new QDomProcessingInstruction ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomProcessingInstruction ()
//[2]QDomProcessingInstruction ( const QDomProcessingInstruction & x )

HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMPROCESSINGINSTRUCTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMPROCESSINGINSTRUCTION(1) )
  {
    HB_FUNC_EXEC( QDOMPROCESSINGINSTRUCTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_DELETE )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString data () const
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_DATA )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->data (  ).toLatin1().data() );
  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NODETYPE )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType (  ) );
  }
}


/*
void setData ( const QString & d )
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_SETDATA )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString target () const
*/
HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_TARGET )
{
  QDomProcessingInstruction * obj = (QDomProcessingInstruction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->target (  ).toLatin1().data() );
  }
}



#pragma ENDDUMP
