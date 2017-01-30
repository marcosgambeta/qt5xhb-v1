/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDomCDATASection INHERIT QDomText

   DATA class_id INIT Class_Id_QDomCDATASection
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomCDATASection
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
#include <QDomCDATASection>
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
#include <QDomCDATASection>
#endif
#endif

/*
QDomCDATASection ()
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomCDATASection * o = new QDomCDATASection (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomCDATASection *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QDomCDATASection ( const QDomCDATASection & x )
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomCDATASection * par1 = (QDomCDATASection *) _qtxhb_itemGetPtr(1);
  QDomCDATASection * o = new QDomCDATASection ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomCDATASection *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QDomCDATASection ()
//[2]QDomCDATASection ( const QDomCDATASection & x )

HB_FUNC_STATIC( QDOMCDATASECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCDATASECTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCDATASECTION(1) )
  {
    HB_FUNC_EXEC( QDOMCDATASECTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMCDATASECTION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDomCDATASection * obj = (QDomCDATASection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NODETYPE )
{
  QDomCDATASection * obj = (QDomCDATASection *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->nodeType (  );
    hb_retni( i );
  }
}



#pragma ENDDUMP
