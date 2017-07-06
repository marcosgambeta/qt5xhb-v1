$header

#include "hbclass.ch"

CLASS QStyleOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD init
   METHOD initFrom

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
QStyleOption(int version = QStyleOption::Version, int type = SO_Default)
*/
void QStyleOption_new1 ()
{
  QStyleOption * o = new QStyleOption ( OPINT(1,QStyleOption::Version), OPINT(2,QStyleOption::SO_Default) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStyleOption(const QStyleOption &other)
*/
void QStyleOption_new2 ()
{
  QStyleOption * o = new QStyleOption ( *PQSTYLEOPTION(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QStyleOption(int version = QStyleOption::Version, int type = SO_Default)
//[2]QStyleOption(const QStyleOption &other)

HB_FUNC_STATIC( QSTYLEOPTION_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTNUM(2) )
  {
    QStyleOption_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTION(1) )
  {
    QStyleOption_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void init(const QWidget *w)
*/
HB_FUNC_STATIC( QSTYLEOPTION_INIT )
{
  QStyleOption * obj = (QStyleOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
      obj->init ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void initFrom(const QWidget *w)
*/
HB_FUNC_STATIC( QSTYLEOPTION_INITFROM )
{
  QStyleOption * obj = (QStyleOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
      obj->initFrom ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
