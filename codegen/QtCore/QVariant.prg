$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
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
   DATA self_destruction INIT .F.

   METHOD new2
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new12
   METHOD new13
   METHOD new14
   METHOD new17
   METHOD new19
   METHOD new24
   METHOD new25
   METHOD new26
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

$destructor

#pragma BEGINDUMP

$includes

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
$internalConstructor=|new1|

/*
QVariant(Type type)
*/
$constructor=|new2|QVariant::Type

/*
QVariant(int typeId, const void *copy)
*/
$internalConstructor=|new3|int,const void *

/*
QVariant(int typeId, const void *copy, uint flags)
*/
$internalConstructor=|new4|int,const void *,uint

/*
QVariant(const QVariant &other)
*/
$internalConstructor=|new5|const QVariant &

/*
QVariant(QDataStream &s)
*/
void QVariant_new6 ()
{
#ifndef QT_NO_DATASTREAM
  QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(int i)
*/
$constructor=|new7|int

/*
QVariant(uint ui)
*/
$constructor=|new8|uint

/*
QVariant(qlonglong ll)
*/
$constructor=|new9|qlonglong

/*
QVariant(qulonglong ull)
*/
$constructor=|new10|qulonglong

/*
QVariant(bool b)
*/
$internalConstructor=|new11|bool

/*
QVariant(double d)
*/
$constructor=|new12|double

/*
QVariant(float f)
*/
$constructor=|new13|float

/*
QVariant(const char *str)
*/
HB_FUNC_STATIC( QVARIANT_NEW14 )
{
#ifndef QT_NO_CAST_FROM_ASCII
  QVariant * o = new QVariant ( PCONSTCHAR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QByteArray &bytearray)
*/
$internalConstructor=|new15|const QByteArray &

/*
QVariant(const QBitArray &bitarray)
*/
$internalConstructor=|new16|const QBitArray &

/*
QVariant(const QString &string)
*/
$constructor=|new17|const QString &

/*
QVariant(QLatin1String string)
*/
$internalConstructor=|new18|QLatin1String

/*
QVariant(const QStringList &stringlist)
*/
$constructor=|new19|const QStringList &

/*
QVariant(QChar qchar)
*/
$internalConstructor=|new20|QChar

/*
QVariant(const QDate &date)
*/
$internalConstructor=|new21|const QDate &

/*
QVariant(const QTime &time)
*/
$internalConstructor=|new22|const QTime &

/*
QVariant(const QDateTime &datetime)
*/
$internalConstructor=|new23|const QDateTime &

/*
QVariant(const QList<QVariant> &list)
*/
HB_FUNC_STATIC( QVARIANT_NEW24 )
{
  QVariant * o = new QVariant ( PQVARIANTLIST(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QMap<QString,QVariant> &map)
*/
HB_FUNC_STATIC( QVARIANT_NEW25 )
{
  QVariant * o = new QVariant ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QHash<QString,QVariant> &hash)
*/
HB_FUNC_STATIC( QVARIANT_NEW26 )
{
  QVariant * o = new QVariant ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QVariant(const QSize &size)
*/
void QVariant_new27 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQSIZE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QSizeF &size)
*/
void QVariant_new28 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQSIZEF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QPoint &pt)
*/
void QVariant_new29 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQPOINT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QPointF &pt)
*/
void QVariant_new30 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQPOINTF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QLine &line)
*/
void QVariant_new31 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQLINE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QLineF &line)
*/
void QVariant_new32 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQLINEF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QRect &rect)
*/
void QVariant_new33 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQRECT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QRectF &rect)
*/
void QVariant_new34 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQRECTF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QLocale &locale)
*/
$internalConstructor=|new35|const QLocale &

/*
QVariant(const QRegExp &regExp)
*/
void QVariant_new36 ()
{
#ifndef QT_NO_REGEXP
  QVariant * o = new QVariant ( *PQREGEXP(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QRegularExpression &re)
*/
void QVariant_new37 ()
{
#ifndef QT_NO_REGULAREXPRESSION
  QVariant * o = new QVariant ( *PQREGULAREXPRESSION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QVariant(const QUrl &url)
*/
$internalConstructor=|new38|const QUrl &

/*
QVariant(const QEasingCurve &easing)
*/
$internalConstructor=|new39|const QEasingCurve &

/*
QVariant(const QUuid &uuid)
*/
$internalConstructor=|new40|const QUuid &

/*
QVariant(const QModelIndex &modelIndex)
*/
$internalConstructor=|new41|const QModelIndex &

/*
QVariant(const QJsonValue &jsonValue)
*/
$internalConstructor=|new42|const QJsonValue &

/*
QVariant(const QJsonObject &jsonObject)
*/
$internalConstructor=|new43|const QJsonObject &

/*
QVariant(const QJsonArray &jsonArray)
*/
$internalConstructor=|new44|const QJsonArray &

/*
QVariant(const QJsonDocument &jsonDocument)
*/
$internalConstructor=|new45|const QJsonDocument &

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
    QVariant_new1();
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    if( ISQVARIANT(1) )
    {
      QVariant_new5();
    }
    else if( ISQDATASTREAM(1) )
    {
      QVariant_new6();
    }
    else if( ISQBYTEARRAY(1) )
    {
      QVariant_new15();
    }
    else if( ISQBITARRAY(1) )
    {
      QVariant_new16();
    }
    else if( ISQLATIN1STRING(1) )
    {
      QVariant_new18();
    }
    else if( ISQCHAR(1) )
    {
      QVariant_new20();
    }
    else if( ISQDATE(1) )
    {
      QVariant_new21();
    }
    else if( ISQTIME(1) )
    {
      QVariant_new22();
    }
    else if( ISQDATETIME(1) )
    {
      QVariant_new23();
    }
    else if( ISQSIZE(1) )
    {
      QVariant_new27();
    }
    else if( ISQSIZEF(1) )
    {
      QVariant_new28();
    }
    else if( ISQPOINT(1) )
    {
      QVariant_new29();
    }
    else if( ISQPOINTF(1) )
    {
      QVariant_new30();
    }
    else if( ISQLINE(1) )
    {
      QVariant_new31();
    }
    else if( ISQLINEF(1) )
    {
      QVariant_new32();
    }
    else if( ISQRECT(1) )
    {
      QVariant_new33();
    }
    else if( ISQRECTF(1) )
    {
      QVariant_new34();
    }
    else if( ISQLOCALE(1) )
    {
      QVariant_new35();
    }
    else if( ISQREGEXP(1) )
    {
      QVariant_new36();
    }
    else if( ISQREGULAREXPRESSION(1) )
    {
      QVariant_new37();
    }
    else if( ISQURL(1) )
    {
      QVariant_new38();
    }
    else if( ISQEASINGCURVE(1) )
    {
      QVariant_new39();
    }
    else if( ISQUUID(1) )
    {
      QVariant_new40();
    }
    else if( ISQMODELINDEX(1) )
    {
      QVariant_new41();
    }
    else if( ISQJSONVALUE(1) )
    {
      QVariant_new42();
    }
    else if( ISQJSONOBJECT(1) )
    {
      QVariant_new43();
    }
    else if( ISQJSONARRAY(1) )
    {
      QVariant_new44();
    }
    else if( ISQJSONDOCUMENT(1) )
    {
      QVariant_new45();
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
    QVariant_new11();
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
    QVariant_new3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
  {
    QVariant_new4();
  }
  else if( ISNUMPAR(1) && hb_param( 1, HB_IT_DATE ) != NULL )
  {
    int y, m, d;
    hb_dateDecode( hb_itemGetDL( hb_param( 1, HB_IT_DATE ) ), &y, &m, &d );
    QDate date(y, m, d);
    QVariant * o = new QVariant ( date );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QVariant &other)
*/
$method=|void|swap|QVariant &

/*
Type type() const
*/
$method=|QVariant::Type|type|

/*
int userType() const
*/
$method=|int|userType|

/*
const char *typeName() const
*/
$method=|const char *|typeName|

/*
bool canConvert(int targetTypeId) const
*/
$method=|bool|canConvert|int

/*
bool convert(int targetTypeId)
*/
$method=|bool|convert|int

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
void clear()
*/
$method=|void|clear|

/*
void detach()
*/
$method=|void|detach|

/*
bool isDetached() const
*/
$method=|bool|isDetached|

/*
int toInt(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOINT )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RINT( obj->toInt ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
uint toUInt(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOUINT )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      hb_retni( obj->toUInt ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qlonglong toLongLong(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOLONGLONG )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      hb_retnll( obj->toLongLong ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qulonglong toULongLong(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOULONGLONG )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      hb_retnll( obj->toULongLong ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool toBool() const
*/
$method=|bool|toBool|

/*
double toDouble(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TODOUBLE )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RDOUBLE( obj->toDouble ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
float toFloat(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOFLOAT )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RFLOAT( obj->toFloat ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal toReal(bool *ok = 0) const
*/
HB_FUNC_STATIC( QVARIANT_TOREAL )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTLOG(1) ) // TODO: implementar parametro opcional
    {
      bool par1;
      RQREAL( obj->toReal ( &par1 ) );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray toByteArray() const
*/
$method=|QByteArray|toByteArray|

/*
QBitArray toBitArray() const
*/
$method=|QBitArray|toBitArray|

/*
QString toString() const
*/
$method=|QString|toString|

/*
QStringList toStringList() const
*/
$method=|QStringList|toStringList|

/*
QChar toChar() const
*/
$method=|QChar|toChar|

/*
QDate toDate() const
*/
$method=|QDate|toDate|

/*
QTime toTime() const
*/
$method=|QTime|toTime|

/*
QDateTime toDateTime() const
*/
$method=|QDateTime|toDateTime|

/*
QList<QVariant> toList() const
*/
HB_FUNC_STATIC( QVARIANT_TOLIST )
{
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    _qt5xhb_convert_qvariantlist_to_array( obj->toList () );
  }
}

/*
QPoint toPoint() const
*/
$method=|QPoint|toPoint||#ifndef QT_NO_GEOM_VARIANT

/*
QPointF toPointF() const
*/
$method=|QPointF|toPointF||#ifndef QT_NO_GEOM_VARIANT

/*
QRect toRect() const
*/
$method=|QRect|toRect||#ifndef QT_NO_GEOM_VARIANT

/*
QRectF toRectF() const
*/
$method=|QRectF|toRectF||#ifndef QT_NO_GEOM_VARIANT

/*
QSize toSize() const
*/
$method=|QSize|toSize||#ifndef QT_NO_GEOM_VARIANT

/*
QSizeF toSizeF() const
*/
$method=|QSizeF|toSizeF||#ifndef QT_NO_GEOM_VARIANT

/*
QLine toLine() const
*/
$method=|QLine|toLine||#ifndef QT_NO_GEOM_VARIANT

/*
QLineF toLineF() const
*/
$method=|QLineF|toLineF||#ifndef QT_NO_GEOM_VARIANT

/*
QLocale toLocale() const
*/
$method=|QLocale|toLocale|

/*
QRegExp toRegExp() const
*/
$method=|QRegExp|toRegExp||#ifndef QT_NO_REGEXP

/*
QRegularExpression toRegularExpression() const
*/
$method=|QRegularExpression|toRegularExpression||#ifndef QT_NO_REGULAREXPRESSION

/*
QUrl toUrl() const
*/
$method=|QUrl|toUrl|

/*
QEasingCurve toEasingCurve() const
*/
$method=|QEasingCurve|toEasingCurve|

/*
QUuid toUuid() const
*/
$method=|QUuid|toUuid|

/*
QModelIndex toModelIndex() const
*/
$method=|QModelIndex|toModelIndex|

/*
QJsonValue toJsonValue() const
*/
$method=|QJsonValue|toJsonValue|

/*
QJsonObject toJsonObject() const
*/
$method=|QJsonObject|toJsonObject|

/*
QJsonArray toJsonArray() const
*/
$method=|QJsonArray|toJsonArray|

/*
QJsonDocument toJsonDocument() const
*/
$method=|QJsonDocument|toJsonDocument|

/*
void load(QDataStream &ds)
*/
HB_FUNC_STATIC( QVARIANT_LOAD )
{
#ifndef QT_NO_DATASTREAM
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      obj->load ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
  QVariant * obj = (QVariant *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      obj->save ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void *data()
*/
$method=|void *|data|

/*
static const char *typeToName(int typeId)
*/
$staticMethod=|const char *|typeToName|int

/*
static Type nameToType(const char *name)
*/
$staticMethod=|QVariant::Type|nameToType|const char *

$extraMethods

#pragma ENDDUMP
