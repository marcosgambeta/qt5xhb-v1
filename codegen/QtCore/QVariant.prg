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

$prototype=QVariant()
$internalConstructor=|new1|

$prototype=QVariant(Type type)
$constructor=|new2|QVariant::Type

$prototype=QVariant(int typeId, const void *copy)
$internalConstructor=|new3|int,const void *

$prototype=QVariant(int typeId, const void *copy, uint flags)
$internalConstructor=|new4|int,const void *,uint

$prototype=QVariant(const QVariant &other)
$internalConstructor=|new5|const QVariant &

$prototype=QVariant(QDataStream &s)
void QVariant_new6 ()
{
#ifndef QT_NO_DATASTREAM
  QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
  QVariant * o = new QVariant ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(int i)
$constructor=|new7|int

$prototype=QVariant(uint ui)
$constructor=|new8|uint

$prototype=QVariant(qlonglong ll)
$constructor=|new9|qlonglong

$prototype=QVariant(qulonglong ull)
$constructor=|new10|qulonglong

$prototype=QVariant(bool b)
$internalConstructor=|new11|bool

$prototype=QVariant(double d)
$constructor=|new12|double

$prototype=QVariant(float f)
$constructor=|new13|float

$prototype=QVariant(const char *str)
HB_FUNC_STATIC( QVARIANT_NEW14 )
{
#ifndef QT_NO_CAST_FROM_ASCII
  QVariant * o = new QVariant ( PCONSTCHAR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QByteArray &bytearray)
$internalConstructor=|new15|const QByteArray &

$prototype=QVariant(const QBitArray &bitarray)
$internalConstructor=|new16|const QBitArray &

$prototype=QVariant(const QString &string)
$constructor=|new17|const QString &

$prototype=QVariant(QLatin1String string)
$internalConstructor=|new18|QLatin1String

$prototype=QVariant(const QStringList &stringlist)
$constructor=|new19|const QStringList &

$prototype=QVariant(QChar qchar)
$internalConstructor=|new20|QChar

$prototype=QVariant(const QDate &date)
$internalConstructor=|new21|const QDate &

$prototype=QVariant(const QTime &time)
$internalConstructor=|new22|const QTime &

$prototype=QVariant(const QDateTime &datetime)
$internalConstructor=|new23|const QDateTime &

$prototype=QVariant(const QList<QVariant> &list)
HB_FUNC_STATIC( QVARIANT_NEW24 )
{
  QVariant * o = new QVariant ( PQVARIANTLIST(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

$prototype=QVariant(const QMap<QString,QVariant> &map)
HB_FUNC_STATIC( QVARIANT_NEW25 )
{
  QVariant * o = new QVariant ();
  _qt5xhb_storePointerAndFlag( o, true );
}

$prototype=QVariant(const QHash<QString,QVariant> &hash)
HB_FUNC_STATIC( QVARIANT_NEW26 )
{
  QVariant * o = new QVariant ();
  _qt5xhb_storePointerAndFlag( o, true );
}

$prototype=QVariant(const QSize &size)
void QVariant_new27 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQSIZE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QSizeF &size)
void QVariant_new28 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQSIZEF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QPoint &pt)
void QVariant_new29 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQPOINT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QPointF &pt)
void QVariant_new30 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQPOINTF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QLine &line)
void QVariant_new31 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQLINE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QLineF &line)
void QVariant_new32 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQLINEF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QRect &rect)
void QVariant_new33 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQRECT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QRectF &rect)
void QVariant_new34 ()
{
#ifndef QT_NO_GEOM_VARIANT
  QVariant * o = new QVariant ( *PQRECTF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QLocale &locale)
$internalConstructor=|new35|const QLocale &

$prototype=QVariant(const QRegExp &regExp)
void QVariant_new36 ()
{
#ifndef QT_NO_REGEXP
  QVariant * o = new QVariant ( *PQREGEXP(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QRegularExpression &re)
void QVariant_new37 ()
{
#ifndef QT_NO_REGULAREXPRESSION
  QVariant * o = new QVariant ( *PQREGULAREXPRESSION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$prototype=QVariant(const QUrl &url)
$internalConstructor=|new38|const QUrl &

$prototype=QVariant(const QEasingCurve &easing)
$internalConstructor=|new39|const QEasingCurve &

$prototype=QVariant(const QUuid &uuid)
$internalConstructor=|new40|const QUuid &

$prototype=QVariant(const QModelIndex &modelIndex)
$internalConstructor=|new41|const QModelIndex &

$prototype=QVariant(const QJsonValue &jsonValue)
$internalConstructor=|new42|const QJsonValue &

$prototype=QVariant(const QJsonObject &jsonObject)
$internalConstructor=|new43|const QJsonObject &

$prototype=QVariant(const QJsonArray &jsonArray)
$internalConstructor=|new44|const QJsonArray &

$prototype=QVariant(const QJsonDocument &jsonDocument)
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

$prototype=void swap(QVariant &other)
$method=|void|swap|QVariant &

$prototype=Type type() const
$method=|QVariant::Type|type|

$prototype=int userType() const
$method=|int|userType|

$prototype=const char *typeName() const
$method=|const char *|typeName|

$prototype=bool canConvert(int targetTypeId) const
$method=|bool|canConvert|int

$prototype=bool convert(int targetTypeId)
$method=|bool|convert|int

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=void clear()
$method=|void|clear|

$prototype=void detach()
$method=|void|detach|

$prototype=bool isDetached() const
$method=|bool|isDetached|

$prototype=int toInt(bool *ok = 0) const
%% TODO: implementar parametro opcional
$method=|int|toInt|bool *=0

$prototype=uint toUInt(bool *ok = 0) const
%% TODO: implementar parametro opcional
$method=|uint|toUInt|bool *=0

$prototype=qlonglong toLongLong(bool *ok = 0) const
%% TODO: implementar parametro opcional
$method=|qlonglong|toLongLong|bool *=0

$prototype=qulonglong toULongLong(bool *ok = 0) const
%% TODO: implementar parametro opcional
$method=|qulonglong|toULongLong|bool *=0

$prototype=bool toBool() const
$method=|bool|toBool|

$prototype=double toDouble(bool *ok = 0) const
%% TODO: implementar parametro opcional
$method=|double|toDouble|bool *=0

$prototype=float toFloat(bool *ok = 0) const
%% TODO: implementar parametro opcional
$method=|float|toFloat|bool *=0

$prototype=qreal toReal(bool *ok = 0) const
%% TODO: implementar parametro opcional
$method=|qreal|toReal|bool *=0

$prototype=QByteArray toByteArray() const
$method=|QByteArray|toByteArray|

$prototype=QBitArray toBitArray() const
$method=|QBitArray|toBitArray|

$prototype=QString toString() const
$method=|QString|toString|

$prototype=QStringList toStringList() const
$method=|QStringList|toStringList|

$prototype=QChar toChar() const
$method=|QChar|toChar|

$prototype=QDate toDate() const
$method=|QDate|toDate|

$prototype=QTime toTime() const
$method=|QTime|toTime|

$prototype=QDateTime toDateTime() const
$method=|QDateTime|toDateTime|

$prototype=QList<QVariant> toList() const
$method=|QList<QVariant>|toList|

$prototype=QPoint toPoint() const
$method=|QPoint|toPoint||#ifndef QT_NO_GEOM_VARIANT

$prototype=QPointF toPointF() const
$method=|QPointF|toPointF||#ifndef QT_NO_GEOM_VARIANT

$prototype=QRect toRect() const
$method=|QRect|toRect||#ifndef QT_NO_GEOM_VARIANT

$prototype=QRectF toRectF() const
$method=|QRectF|toRectF||#ifndef QT_NO_GEOM_VARIANT

$prototype=QSize toSize() const
$method=|QSize|toSize||#ifndef QT_NO_GEOM_VARIANT

$prototype=QSizeF toSizeF() const
$method=|QSizeF|toSizeF||#ifndef QT_NO_GEOM_VARIANT

$prototype=QLine toLine() const
$method=|QLine|toLine||#ifndef QT_NO_GEOM_VARIANT

$prototype=QLineF toLineF() const
$method=|QLineF|toLineF||#ifndef QT_NO_GEOM_VARIANT

$prototype=QLocale toLocale() const
$method=|QLocale|toLocale|

$prototype=QRegExp toRegExp() const
$method=|QRegExp|toRegExp||#ifndef QT_NO_REGEXP

$prototype=QRegularExpression toRegularExpression() const
$method=|QRegularExpression|toRegularExpression||#ifndef QT_NO_REGULAREXPRESSION

$prototype=QUrl toUrl() const
$method=|QUrl|toUrl|

$prototype=QEasingCurve toEasingCurve() const
$method=|QEasingCurve|toEasingCurve|

$prototype=QUuid toUuid() const
$method=|QUuid|toUuid|

$prototype=QModelIndex toModelIndex() const
$method=|QModelIndex|toModelIndex|

$prototype=QJsonValue toJsonValue() const
$method=|QJsonValue|toJsonValue|

$prototype=QJsonObject toJsonObject() const
$method=|QJsonObject|toJsonObject|

$prototype=QJsonArray toJsonArray() const
$method=|QJsonArray|toJsonArray|

$prototype=QJsonDocument toJsonDocument() const
$method=|QJsonDocument|toJsonDocument|

$prototype=void load(QDataStream &ds)
$method=|void|load|QDataStream &|#ifndef QT_NO_DATASTREAM

$prototype=void save(QDataStream &ds) const
$method=|void|save|QDataStream &|#ifndef QT_NO_DATASTREAM

$prototype=void *data()
$method=|void *|data|

$prototype=static const char *typeToName(int typeId)
$staticMethod=|const char *|typeToName|int

$prototype=static Type nameToType(const char *name)
$staticMethod=|QVariant::Type|nameToType|const char *

$extraMethods

#pragma ENDDUMP
