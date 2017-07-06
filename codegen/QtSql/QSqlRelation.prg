$header

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

$destructor

#pragma BEGINDUMP

$includes

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

$deleteMethod

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

$extraMethods

#pragma ENDDUMP
