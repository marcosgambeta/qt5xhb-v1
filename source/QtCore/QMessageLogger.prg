/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QMessageLogger

   DATA pointer
   //DATA class_id INIT Class_Id_QMessageLogger
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMessageLogger
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMessageLogger>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMessageLogger>
#endif

/*
QMessageLogger()
*/
void QMessageLogger_new1 ()
{
  QMessageLogger * o = new QMessageLogger (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QMessageLogger(const char *file, int line, const char *function)
*/
void QMessageLogger_new2 ()
{
  const char * par1 = hb_parc(1);
  int par2 = hb_parni(2);
  const char * par3 = hb_parc(3);
  QMessageLogger * o = new QMessageLogger (  (const char *) par1, par2,  (const char *) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QMessageLogger(const char *file, int line, const char *function, const char *category)
*/
void QMessageLogger_new3 ()
{
  const char * par1 = hb_parc(1);
  int par2 = hb_parni(2);
  const char * par3 = hb_parc(3);
  const char * par4 = hb_parc(4);
  QMessageLogger * o = new QMessageLogger (  (const char *) par1, par2,  (const char *) par3,  (const char *) par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QMessageLogger()
//[2]QMessageLogger(const char *file, int line, const char *function)
//[3]QMessageLogger(const char *file, int line, const char *function, const char *category)

HB_FUNC_STATIC( QMESSAGELOGGER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMessageLogger_new1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) )
  {
    QMessageLogger_new2();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) )
  {
    QMessageLogger_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMESSAGELOGGER_DELETE )
{
  QMessageLogger * obj = (QMessageLogger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

HB_FUNC_STATIC( QMESSAGELOGGER_NEWFROM )
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

HB_FUNC_STATIC( QMESSAGELOGGER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMESSAGELOGGER_NEWFROM );
}

HB_FUNC_STATIC( QMESSAGELOGGER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMESSAGELOGGER_NEWFROM );
}

HB_FUNC_STATIC( QMESSAGELOGGER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMESSAGELOGGER_SETSELFDESTRUCTION )
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
