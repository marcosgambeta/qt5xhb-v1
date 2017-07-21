$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QEasingCurve

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addCubicBezierSegment
   METHOD addTCBSegment
   METHOD amplitude
   METHOD overshoot
   METHOD period
   METHOD setAmplitude
   METHOD setOvershoot
   METHOD setPeriod
   METHOD setType
   METHOD swap
   METHOD toCubicSpline
   METHOD type
   METHOD valueForProgress

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

#include <QPointF>

/*
QEasingCurve ( Type type = Linear )
*/
$internalConstructor=|new1|QEasingCurve::Type=QEasingCurve::Linear

/*
QEasingCurve ( const QEasingCurve & other )
*/
$internalConstructor=|new2|const QEasingCurve &

//[1]QEasingCurve(Type type = Linear)
//[2]QEasingCurve(const QEasingCurve & other)

HB_FUNC_STATIC( QEASINGCURVE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QEasingCurve_new1();
  }
  else if( ISNUMPAR(1) && ISQEASINGCURVE(1) )
  {
    QEasingCurve_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addCubicBezierSegment(const QPointF & c1, const QPointF & c2, const QPointF & endPoint)
*/
$method=|void|addCubicBezierSegment|const QPointF &,const QPointF &,const QPointF &

/*
void addTCBSegment(const QPointF & nextPoint, qreal t, qreal c, qreal b)
*/
$method=|void|addTCBSegment|const QPointF &,qreal,qreal,qreal

/*
qreal amplitude() const
*/
$method=|qreal|amplitude|

/*
qreal overshoot() const
*/
$method=|qreal|overshoot|

/*
qreal period() const
*/
$method=|qreal|period|

/*
void setAmplitude(qreal amplitude)
*/
$method=|void|setAmplitude|qreal

/*
void setOvershoot(qreal overshoot)
*/
$method=|void|setOvershoot|qreal

/*
void setPeriod(qreal period)
*/
$method=|void|setPeriod|qreal

/*
void setType(Type type)
*/
$method=|void|setType|QEasingCurve::Type

/*
void swap(QEasingCurve & other)
*/
$method=|void|swap|QEasingCurve &

/*
QVector<QPointF> toCubicSpline() const
*/
HB_FUNC_STATIC( QEASINGCURVE_TOCUBICSPLINE )
{
  QEasingCurve * obj = (QEasingCurve *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector<QPointF> list = obj->toCubicSpline ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPOINTF" );
    #else
    pDynSym = hb_dynsymFindName( "QPOINTF" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QPointF *) new QPointF ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
Type type() const
*/
$method=|QEasingCurve::Type|type|

/*
qreal valueForProgress(qreal progress) const
*/
$method=|qreal|valueForProgress|qreal

$extraMethods

#pragma ENDDUMP
