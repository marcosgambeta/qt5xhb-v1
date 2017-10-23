/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QSqlRelation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD displayColumn
   METHOD indexColumn
   METHOD isValid
   METHOD tableName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlRelation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlRelation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlRelation>
#endif

/*
QSqlRelation ()
*/
void QSqlRelation_new1 ()
{
  QSqlRelation * o = new QSqlRelation ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSqlRelation ( const QString & tableName, const QString & indexColumn, const QString & displayColumn )
*/
void QSqlRelation_new2 ()
{
  QSqlRelation * o = new QSqlRelation ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QSqlRelation ()
//[2]QSqlRelation ( const QString & tableName, const QString & indexColumn, const QString & displayColumn )

HB_FUNC_STATIC( QSQLRELATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSqlRelation_new1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QSqlRelation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLRELATION_DELETE )
{
  QSqlRelation * obj = (QSqlRelation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString displayColumn () const
*/
HB_FUNC_STATIC( QSQLRELATION_DISPLAYCOLUMN )
{
  QSqlRelation * obj = (QSqlRelation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->displayColumn () );
  }
}

/*
QString indexColumn () const
*/
HB_FUNC_STATIC( QSQLRELATION_INDEXCOLUMN )
{
  QSqlRelation * obj = (QSqlRelation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->indexColumn () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLRELATION_ISVALID )
{
  QSqlRelation * obj = (QSqlRelation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
QString tableName () const
*/
HB_FUNC_STATIC( QSQLRELATION_TABLENAME )
{
  QSqlRelation * obj = (QSqlRelation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->tableName () );
  }
}

HB_FUNC_STATIC( QSQLRELATION_NEWFROM )
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

HB_FUNC_STATIC( QSQLRELATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLRELATION_NEWFROM );
}

HB_FUNC_STATIC( QSQLRELATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLRELATION_NEWFROM );
}

HB_FUNC_STATIC( QSQLRELATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLRELATION_SETSELFDESTRUCTION )
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
