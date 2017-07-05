$header

#include "hbclass.ch"

CLASS QCommandLineOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD names
   METHOD setValueName
   METHOD valueName
   METHOD setDescription
   METHOD description
   METHOD setDefaultValue
   METHOD setDefaultValues
   METHOD defaultValues

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
QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
*/
void QCommandLineOption_new1 ()
{
  QCommandLineOption * o = new QCommandLineOption ( PQSTRING(1), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
*/
void QCommandLineOption_new2 ()
{
  QCommandLineOption * o = new QCommandLineOption ( PQSTRINGLIST(1), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QCommandLineOption(const QCommandLineOption &other)
*/
void QCommandLineOption_new3 ()
{
  QCommandLineOption * o = new QCommandLineOption ( *PQCOMMANDLINEOPTION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
//[2]QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
//[3]QCommandLineOption(const QCommandLineOption &other)

HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEW )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QCommandLineOption_new1();
  }
  else if( ISBETWEEN(1,4) && ISARRAY(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QCommandLineOption_new2();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineOption_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QCommandLineOption &other)
*/
HB_FUNC_STATIC( QCOMMANDLINEOPTION_SWAP )
{
  QCommandLineOption * obj = (QCommandLineOption *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCOMMANDLINEOPTION(1) )
    {
      QCommandLineOption * par1 = (QCommandLineOption *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList names() const
*/
$method=|QStringList|names|

/*
void setValueName(const QString &name)
*/
$method=|void|setValueName|const QString &

/*
QString valueName() const
*/
$method=|QString|valueName|

/*
void setDescription(const QString &description)
*/
$method=|void|setDescription|const QString &

/*
QString description() const
*/
$method=|QString|description|

/*
void setDefaultValue(const QString &defaultValue)
*/
$method=|void|setDefaultValue|const QString &

/*
void setDefaultValues(const QStringList &defaultValues)
*/
$method=|void|setDefaultValues|const QStringList &

/*
QStringList defaultValues() const
*/
$method=|QStringList|defaultValues|

$extraMethods

#pragma ENDDUMP
