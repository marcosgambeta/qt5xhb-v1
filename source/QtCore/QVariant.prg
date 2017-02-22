/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


#ifndef QTXHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QBITARRAY
REQUEST QCHAR
REQUEST QDATE
REQUEST QTIME
REQUEST QDATETIME
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZE
REQUEST QSIZEF
REQUEST QLINE
REQUEST QLINEF
REQUEST QLOCALE
REQUEST QREGEXP
REQUEST QREGULAREXPRESSION
REQUEST QURL
REQUEST QEASINGCURVE
REQUEST QUUID
REQUEST QMODELINDEX
REQUEST QJSONVALUE
REQUEST QJSONOBJECT
REQUEST QJSONARRAY
REQUEST QJSONDOCUMENT
#endif

CLASS QVariant

   DATA pointer
   DATA class_id INIT Class_Id_QVariant
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new11
   METHOD new12
   METHOD new13
   METHOD new14
   METHOD new15
   METHOD new16
   METHOD new17
   METHOD new18
   METHOD new19
   METHOD new20
   METHOD new21
   METHOD new22
   METHOD new23
   METHOD new24
   METHOD new25
   METHOD new26
   METHOD new27
   METHOD new28
   METHOD new29
   METHOD new30
   METHOD new31
   METHOD new32
   METHOD new33
   METHOD new34
   METHOD new35
   METHOD new36
   METHOD new37
   METHOD new38
   METHOD new39
   METHOD new40
   METHOD new41
   METHOD new42
   METHOD new43
   METHOD new44
   METHOD new45
   METHOD new
   METHOD delete
   METHOD swap
   METHOD type
   METHOD userType
   METHOD typeName
   METHOD canConvert
   METHOD convert
   METHOD isValid
   METHOD isNull
   METHOD clear
   METHOD detach
   METHOD isDetached
   METHOD toInt
   METHOD toUInt
   METHOD toLongLong
   METHOD toULongLong
   METHOD toBool
   METHOD toDouble
   METHOD toFloat
   METHOD toReal
   METHOD toByteArray
   METHOD toBitArray
   METHOD toString
   METHOD toStringList
   METHOD toChar
   METHOD toDate
   METHOD toTime
   METHOD toDateTime
   METHOD toList
   METHOD toPoint
   METHOD toPointF
   METHOD toRect
   METHOD toRectF
   METHOD toSize
   METHOD toSizeF
   METHOD toLine
   METHOD toLineF
   METHOD toLocale
   METHOD toRegExp
   METHOD toRegularExpression
   METHOD toUrl
   METHOD toEasingCurve
   METHOD toUuid
   METHOD toModelIndex
   METHOD toJsonValue
   METHOD toJsonObject
   METHOD toJsonArray
   METHOD toJsonDocument
   METHOD load
   METHOD save
   METHOD data
   METHOD typeToName
   METHOD nameToType
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVariant
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QVariant>
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
#include <QVariant>
#endif
#endif

#include <QDataStream>
#include <QByteArray>
#include <QBitArray>
#include <QString>
#include <QLatin1String>
#include <QStringList>
#include <QChar>
#include <QDate>
#include <QTime>
#include <QDateTime>
#include <QList>
#include <QMap>
#include <QHash>
#include <QSize>
#include <QSizeF>
#include <QPoint>
#include <QPointF>
#include <QLine>
#include <QLineF>
#include <QRect>
#include <QRectF>
#include <QLocale>
#include <QRegExp>
#include <QRegularExpression>
#include <QUrl>
#include <QEasingCurve>
#include <QUuid>
#include <QModelIndex>
#include <QJsonValue>
#include <QJsonObject>
#include <QJsonArray>
#include <QJsonDocument>

/*
QVariant()
*/
HB_FUNC_STATIC( QVARIANT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVariant * o = new QVariant (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(Type type)
*/
HB_FUNC_STATIC( QVARIANT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QVariant * o = new QVariant (  (QVariant::Type) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(int typeId, const void *copy)
*/
HB_FUNC_STATIC( QVARIANT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  const void * par2 = (const void *) hb_parptr(2);
  QVariant * o = new QVariant ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(int typeId, const void *copy, uint flags)
*/
HB_FUNC_STATIC( QVARIANT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  const void * par2 = (const void *) hb_parptr(2);
  uint par3 = hb_parni(3);
  QVariant * o = new QVariant ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QVariant &other)
*/
HB_FUNC_STATIC( QVARIANT_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(QDataStream &s)
*/
HB_FUNC_STATIC( QVARIANT_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_DATASTREAM
  QDataStream * par1 = (QDataStream *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(int i)
*/
HB_FUNC_STATIC( QVARIANT_NEW7 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(uint ui)
*/
HB_FUNC_STATIC( QVARIANT_NEW8 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  uint par1 = hb_parni(1);
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(qlonglong ll)
*/
HB_FUNC_STATIC( QVARIANT_NEW9 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  qlonglong par1 = hb_parnll(1);
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(qulonglong ull)
*/
HB_FUNC_STATIC( QVARIANT_NEW10 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  qulonglong par1 = hb_parnll(1);
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(bool b)
*/
HB_FUNC_STATIC( QVARIANT_NEW11 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  bool par1 = hb_parl(1);
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(double d)
*/
HB_FUNC_STATIC( QVARIANT_NEW12 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  double par1 = hb_parnd(1);
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(float f)
*/
HB_FUNC_STATIC( QVARIANT_NEW13 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  float par1 = hb_parnd(1);
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const char *str)
*/
HB_FUNC_STATIC( QVARIANT_NEW14 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_CAST_FROM_ASCII
  const char * par1 = hb_parc(1);
  QVariant * o = new QVariant (  (const char *) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QByteArray &bytearray)
*/
HB_FUNC_STATIC( QVARIANT_NEW15 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QBitArray &bitarray)
*/
HB_FUNC_STATIC( QVARIANT_NEW16 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QBitArray * par1 = (QBitArray *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QString &string)
*/
HB_FUNC_STATIC( QVARIANT_NEW17 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(QLatin1String string)
*/
HB_FUNC_STATIC( QVARIANT_NEW18 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLatin1String * par1 = (QLatin1String *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QStringList &stringlist)
*/
HB_FUNC_STATIC( QVARIANT_NEW19 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(QChar qchar)
*/
HB_FUNC_STATIC( QVARIANT_NEW20 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QChar * par1 = (QChar *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QDate &date)
*/
HB_FUNC_STATIC( QVARIANT_NEW21 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDate * par1 = (QDate *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QTime &time)
*/
HB_FUNC_STATIC( QVARIANT_NEW22 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTime * par1 = (QTime *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QDateTime &datetime)
*/
HB_FUNC_STATIC( QVARIANT_NEW23 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QList<QVariant> &list)
*/
HB_FUNC_STATIC( QVARIANT_NEW24 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
QList<QVariant> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QVariant * o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QMap<QString,QVariant> &map)
*/
HB_FUNC_STATIC( QVARIANT_NEW25 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVariant * o = new QVariant (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QHash<QString,QVariant> &hash)
*/
HB_FUNC_STATIC( QVARIANT_NEW26 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVariant * o = new QVariant (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QSize &size)
*/
HB_FUNC_STATIC( QVARIANT_NEW27 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_GEOM_VARIANT
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QSizeF &size)
*/
HB_FUNC_STATIC( QVARIANT_NEW28 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_GEOM_VARIANT
  QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QPoint &pt)
*/
HB_FUNC_STATIC( QVARIANT_NEW29 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_GEOM_VARIANT
  QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QPointF &pt)
*/
HB_FUNC_STATIC( QVARIANT_NEW30 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_GEOM_VARIANT
  QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QLine &line)
*/
HB_FUNC_STATIC( QVARIANT_NEW31 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_GEOM_VARIANT
  QLine * par1 = (QLine *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QLineF &line)
*/
HB_FUNC_STATIC( QVARIANT_NEW32 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_GEOM_VARIANT
  QLineF * par1 = (QLineF *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QRect &rect)
*/
HB_FUNC_STATIC( QVARIANT_NEW33 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_GEOM_VARIANT
  QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QRectF &rect)
*/
HB_FUNC_STATIC( QVARIANT_NEW34 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_GEOM_VARIANT
  QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QLocale &locale)
*/
HB_FUNC_STATIC( QVARIANT_NEW35 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLocale * par1 = (QLocale *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QRegExp &regExp)
*/
HB_FUNC_STATIC( QVARIANT_NEW36 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_REGEXP
  QRegExp * par1 = (QRegExp *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QRegularExpression &re)
*/
HB_FUNC_STATIC( QVARIANT_NEW37 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#ifndef QT_NO_REGULAREXPRESSION
  QRegularExpression * par1 = (QRegularExpression *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
#endif
}

/*
QVariant(const QUrl &url)
*/
HB_FUNC_STATIC( QVARIANT_NEW38 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QEasingCurve &easing)
*/
HB_FUNC_STATIC( QVARIANT_NEW39 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QEasingCurve * par1 = (QEasingCurve *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QUuid &uuid)
*/
HB_FUNC_STATIC( QVARIANT_NEW40 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUuid * par1 = (QUuid *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QModelIndex &modelIndex)
*/
HB_FUNC_STATIC( QVARIANT_NEW41 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QModelIndex * par1 = (QModelIndex *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QJsonValue &jsonValue)
*/
HB_FUNC_STATIC( QVARIANT_NEW42 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonValue * par1 = (QJsonValue *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QJsonObject &jsonObject)
*/
HB_FUNC_STATIC( QVARIANT_NEW43 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonObject * par1 = (QJsonObject *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QJsonArray &jsonArray)
*/
HB_FUNC_STATIC( QVARIANT_NEW44 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonArray * par1 = (QJsonArray *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QVariant(const QJsonDocument &jsonDocument)
*/
HB_FUNC_STATIC( QVARIANT_NEW45 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonDocument * par1 = (QJsonDocument *) _qtxhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QVariant()
//[2]QVariant(Type type)
//[3]QVariant(int typeId, const void *copy)
//[4]QVariant(int typeId, const void *copy, uint flags)
//[5]QVariant(const QVariant &other)
//[6]QVariant(QDataStream &s)
//[7]QVariant(int i)
//[8]QVariant(uint ui)
//[9]QVariant(qlonglong ll)
//[10]QVariant(qulonglong ull)
//[11]QVariant(bool b)
//[12]QVariant(double d)
//[13]QVariant(float f)
//[14]QVariant(const char *str)
//[15]QVariant(const QByteArray &bytearray)
//[16]QVariant(const QBitArray &bitarray)
//[17]QVariant(const QString &string)
//[18]QVariant(QLatin1String string)
//[19]QVariant(const QStringList &stringlist)
//[20]QVariant(QChar qchar)
//[21]QVariant(const QDate &date)
//[22]QVariant(const QTime &time)
//[23]QVariant(const QDateTime &datetime)
//[24]QVariant(const QList<QVariant> &list)
//[25]QVariant(const QMap<QString,QVariant> &map)
//[26]QVariant(const QHash<QString,QVariant> &hash)
//[27]QVariant(const QSize &size)
//[28]QVariant(const QSizeF &size)
//[29]QVariant(const QPoint &pt)
//[30]QVariant(const QPointF &pt)
//[31]QVariant(const QLine &line)
//[32]QVariant(const QLineF &line)
//[33]QVariant(const QRect &rect)
//[34]QVariant(const QRectF &rect)
//[35]QVariant(const QLocale &locale)
//[36]QVariant(const QRegExp &regExp)
//[37]QVariant(const QRegularExpression &re)
//[38]QVariant(const QUrl &url)
//[39]QVariant(const QEasingCurve &easing)
//[40]QVariant(const QUuid &uuid)
//[41]QVariant(const QModelIndex &modelIndex)
//[42]QVariant(const QJsonValue &jsonValue)
//[43]QVariant(const QJsonObject &jsonObject)
//[44]QVariant(const QJsonArray &jsonArray)
//[45]QVariant(const QJsonDocument &jsonDocument)

/*
TODO: implementar reconhecimento de parâmetros, se possível, para os casos abaixo

[2]QVariant(Type type)
[8]QVariant(uint ui)
[10]QVariant(qulonglong ull)
[13]QVariant(float f)
[14]QVariant(const char *str)
[24]QVariant(const QList<QVariant> &list)
[25]QVariant(const QMap<QString,QVariant> &map)
[26]QVariant(const QHash<QString,QVariant> &hash)
*/

HB_FUNC_STATIC( QVARIANT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    if( ISQVARIANT(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW5  );
    }
    else if( ISQDATASTREAM(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW6  );
    }
    else if( ISQBYTEARRAY(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW15 );
    }
    else if( ISQBITARRAY(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW16 );
    }
    else if( ISQLATIN1STRING(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW18 );
    }
    else if( ISQCHAR(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW20 );
    }
    else if( ISQDATE(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW21 );
    }
    else if( ISQTIME(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW22 );
    }
    else if( ISQDATETIME(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW23 );
    }
    else if( ISQSIZE(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW27 );
    }
    else if( ISQSIZEF(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW28 );
    }
    else if( ISQPOINT(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW29 );
    }
    else if( ISQPOINTF(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW30 );
    }
    else if( ISQLINE(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW31 );
    }
    else if( ISQLINEF(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW32 );
    }
    else if( ISQRECT(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW33 );
    }
    else if( ISQRECTF(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW34 );
    }
    else if( ISQLOCALE(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW35 );
    }
    else if( ISQREGEXP(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW36 );
    }
    else if( ISQREGULAREXPRESSION(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW37 );
    }
    else if( ISQURL(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW38 );
    }
    else if( ISQEASINGCURVE(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW39 );
    }
    else if( ISQUUID(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW40 );
    }
    else if( ISQMODELINDEX(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW41 );
    }
    else if( ISQJSONVALUE(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW42 );
    }
    else if( ISQJSONOBJECT(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW43 );
    }
    else if( ISQJSONARRAY(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW44 );
    }
    else if( ISQJSONDOCUMENT(1) )
    {
      HB_FUNC_EXEC( QVARIANT_NEW45 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    if( hb_param( 1, HB_IT_DOUBLE ) != NULL )
    {
      HB_FUNC_EXEC( QVARIANT_NEW12 );
    }
    else if( hb_param( 1, HB_IT_LONG ) != NULL )
    {
      HB_FUNC_EXEC( QVARIANT_NEW9 );
    }
    else
    {
      HB_FUNC_EXEC( QVARIANT_NEW7 );
    }
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW11 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW17 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW19 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISPOINTER(2) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW3 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVARIANT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QVariant &other)
*/
HB_FUNC_STATIC( QVARIANT_SWAP )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Type type() const
*/
HB_FUNC_STATIC( QVARIANT_TYPE )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}


/*
int userType() const
*/
HB_FUNC_STATIC( QVARIANT_USERTYPE )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->userType (  ) );
  }
}


/*
const char *typeName() const
*/
HB_FUNC_STATIC( QVARIANT_TYPENAME )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->typeName (  );
    hb_retc( str1 );
  }
}


/*
bool canConvert(int targetTypeId) const
*/
HB_FUNC_STATIC( QVARIANT_CANCONVERT )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canConvert ( (int) hb_parni(1) ) );
  }
}



/*
bool convert(int targetTypeId)
*/
HB_FUNC_STATIC( QVARIANT_CONVERT )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->convert ( (int) hb_parni(1) ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QVARIANT_ISVALID )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QVARIANT_ISNULL )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
void clear()
*/
HB_FUNC_STATIC( QVARIANT_CLEAR )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void detach()
*/
HB_FUNC_STATIC( QVARIANT_DETACH )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->detach (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isDetached() const
*/
HB_FUNC_STATIC( QVARIANT_ISDETACHED )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDetached (  ) );
  }
}


/*
int toInt(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOINT )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    hb_retni( obj->toInt ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
uint toUInt(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOUINT )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    hb_retni( obj->toUInt ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
qlonglong toLongLong(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOLONGLONG )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    hb_retnll( obj->toLongLong ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
qulonglong toULongLong(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOULONGLONG )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    hb_retnll( obj->toULongLong ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
bool toBool() const
*/
HB_FUNC_STATIC( QVARIANT_TOBOOL )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->toBool (  ) );
  }
}


/*
double toDouble(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TODOUBLE )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    hb_retnd( obj->toDouble ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
float toFloat(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOFLOAT )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    hb_retnd( obj->toFloat ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
qreal toReal(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOREAL )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    hb_retnd( obj->toReal ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
QByteArray toByteArray() const
*/
HB_FUNC_STATIC( QVARIANT_TOBYTEARRAY )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toByteArray (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QBitArray toBitArray() const
*/
HB_FUNC_STATIC( QVARIANT_TOBITARRAY )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBitArray * ptr = new QBitArray( obj->toBitArray (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBITARRAY" );
  }
}


/*
QString toString() const
*/
HB_FUNC_STATIC( QVARIANT_TOSTRING )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
  }
}


/*
QStringList toStringList() const
*/
HB_FUNC_STATIC( QVARIANT_TOSTRINGLIST )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->toStringList (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QChar toChar() const
*/
HB_FUNC_STATIC( QVARIANT_TOCHAR )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QChar * ptr = new QChar( obj->toChar (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QDate toDate() const
*/
HB_FUNC_STATIC( QVARIANT_TODATE )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate * ptr = new QDate( obj->toDate (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
QTime toTime() const
*/
HB_FUNC_STATIC( QVARIANT_TOTIME )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * ptr = new QTime( obj->toTime (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


/*
QDateTime toDateTime() const
*/
HB_FUNC_STATIC( QVARIANT_TODATETIME )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toDateTime (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QList<QVariant> toList() const
*/
HB_FUNC_STATIC( QVARIANT_TOLIST )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QVariant> list = obj->toList (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QVARIANT" );
    #else
    pDynSym = hb_dynsymFindName( "QVARIANT" );
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
        hb_itemPutPtr( pItem, (QVariant *) new QVariant ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}




/*
QPoint toPoint() const
*/
HB_FUNC_STATIC( QVARIANT_TOPOINT )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
#endif
}


/*
QPointF toPointF() const
*/
HB_FUNC_STATIC( QVARIANT_TOPOINTF )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
#endif
}


/*
QRect toRect() const
*/
HB_FUNC_STATIC( QVARIANT_TORECT )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->toRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
#endif
}


/*
QRectF toRectF() const
*/
HB_FUNC_STATIC( QVARIANT_TORECTF )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->toRectF (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
#endif
}


/*
QSize toSize() const
*/
HB_FUNC_STATIC( QVARIANT_TOSIZE )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->toSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
#endif
}


/*
QSizeF toSizeF() const
*/
HB_FUNC_STATIC( QVARIANT_TOSIZEF )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->toSizeF (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
#endif
}


/*
QLine toLine() const
*/
HB_FUNC_STATIC( QVARIANT_TOLINE )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLine * ptr = new QLine( obj->toLine (  ) );
    _qt4xhb_createReturnClass ( ptr, "QLINE", true );
  }
#endif
}


/*
QLineF toLineF() const
*/
HB_FUNC_STATIC( QVARIANT_TOLINEF )
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLineF * ptr = new QLineF( obj->toLineF (  ) );
    _qt4xhb_createReturnClass ( ptr, "QLINEF", true );
  }
#endif
}


/*
QLocale toLocale() const
*/
HB_FUNC_STATIC( QVARIANT_TOLOCALE )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->toLocale (  ) );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}


/*
QRegExp toRegExp() const
*/
HB_FUNC_STATIC( QVARIANT_TOREGEXP )
{
#ifndef QT_NO_REGEXP
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->toRegExp (  ) );
    _qt4xhb_createReturnClass ( ptr, "QREGEXP", true );
  }
#endif
}


/*
QRegularExpression toRegularExpression() const
*/
HB_FUNC_STATIC( QVARIANT_TOREGULAREXPRESSION )
{
#ifndef QT_NO_REGULAREXPRESSION
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegularExpression * ptr = new QRegularExpression( obj->toRegularExpression (  ) );
    _qt4xhb_createReturnClass ( ptr, "QREGULAREXPRESSION", true );
  }
#endif
}


/*
QUrl toUrl() const
*/
HB_FUNC_STATIC( QVARIANT_TOURL )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->toUrl (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QEasingCurve toEasingCurve() const
*/
HB_FUNC_STATIC( QVARIANT_TOEASINGCURVE )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEasingCurve * ptr = new QEasingCurve( obj->toEasingCurve (  ) );
    _qt4xhb_createReturnClass ( ptr, "QEASINGCURVE" );
  }
}


/*
QUuid toUuid() const
*/
HB_FUNC_STATIC( QVARIANT_TOUUID )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUuid * ptr = new QUuid( obj->toUuid (  ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
QModelIndex toModelIndex() const
*/
HB_FUNC_STATIC( QVARIANT_TOMODELINDEX )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->toModelIndex (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QJsonValue toJsonValue() const
*/
HB_FUNC_STATIC( QVARIANT_TOJSONVALUE )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonValue * ptr = new QJsonValue( obj->toJsonValue (  ) );
    _qt4xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
}


/*
QJsonObject toJsonObject() const
*/
HB_FUNC_STATIC( QVARIANT_TOJSONOBJECT )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonObject * ptr = new QJsonObject( obj->toJsonObject (  ) );
    _qt4xhb_createReturnClass ( ptr, "QJSONOBJECT" );
  }
}


/*
QJsonArray toJsonArray() const
*/
HB_FUNC_STATIC( QVARIANT_TOJSONARRAY )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonArray * ptr = new QJsonArray( obj->toJsonArray (  ) );
    _qt4xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
}


/*
QJsonDocument toJsonDocument() const
*/
HB_FUNC_STATIC( QVARIANT_TOJSONDOCUMENT )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonDocument * ptr = new QJsonDocument( obj->toJsonDocument (  ) );
    _qt4xhb_createReturnClass ( ptr, "QJSONDOCUMENT" );
  }
}


/*
void load(QDataStream &ds)
*/
HB_FUNC_STATIC( QVARIANT_LOAD )
{
#ifndef QT_NO_DATASTREAM
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) _qtxhb_itemGetPtr(1);
    obj->load ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void save(QDataStream &ds) const
*/
HB_FUNC_STATIC( QVARIANT_SAVE )
{
#ifndef QT_NO_DATASTREAM
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) _qtxhb_itemGetPtr(1);
    obj->save ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void *data()
*/
HB_FUNC_STATIC( QVARIANT_DATA )
{
  QVariant * obj = (QVariant *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (void *) obj->data (  ) );
  }
}




/*
static const char *typeToName(int typeId)
*/
HB_FUNC_STATIC( QVARIANT_TYPETONAME )
{
  const char * str1 = QVariant::typeToName ( (int) hb_parni(1) );
  hb_retc( str1 );
}


/*
static Type nameToType(const char *name)
*/
HB_FUNC_STATIC( QVARIANT_NAMETOTYPE )
{
  const char * par1 = hb_parc(1);
  int i = QVariant::nameToType (  (const char *) par1 );
  hb_retni( i );
}





HB_FUNC_STATIC( QVARIANT_NEWFROM )
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

HB_FUNC_STATIC( QVARIANT_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QVARIANT_NEWFROM );
}

HB_FUNC_STATIC( QVARIANT_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QVARIANT_NEWFROM );
}

HB_FUNC_STATIC( QVARIANT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVARIANT_SETSELFDESTRUCTION )
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
