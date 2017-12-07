$header

#include "hbclass.ch"

CLASS QTranslator INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD load
   METHOD translate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTranslator(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual bool isEmpty() const
$method=|bool|isEmpty|

$prototype=bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
$internalMethod=|bool|load,load1|const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString()

$prototype=bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
$internalMethod=|bool|load,load2|const QLocale &,const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString()

$prototype=bool load(const uchar * data, int len, const QString & directory = QString())
$internalMethod=|bool|load,load3|const uchar *,int,const QString &=QString()

//[1]bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
//[2]bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
//[3]bool load(const uchar * data, int len, const QString & directory = QString())

HB_FUNC_STATIC( QTRANSLATOR_LOAD )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QTranslator_load1();
  }
  else if( ISBETWEEN(2,5) && ISQLOCALE(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTCHAR(5) )
  {
    QTranslator_load2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) )
  {
    QTranslator_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual QString translate(const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1) const
$method=|QString|translate|const char *,const char *,const char *=0,int=-1

#pragma ENDDUMP
