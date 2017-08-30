$header

#include "hbclass.ch"

CLASS QTextBlockFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setAlignment
   METHOD alignment
   METHOD setTopMargin
   METHOD topMargin
   METHOD setBottomMargin
   METHOD bottomMargin
   METHOD setLeftMargin
   METHOD leftMargin
   METHOD setRightMargin
   METHOD rightMargin
   METHOD setTextIndent
   METHOD textIndent
   METHOD setIndent
   METHOD indent
   METHOD setLineHeight
   METHOD lineHeight
   METHOD lineHeightType
   METHOD setNonBreakableLines
   METHOD nonBreakableLines
   METHOD setPageBreakPolicy
   METHOD pageBreakPolicy

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextBlockFormat()
*/
$constructor=|new|

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
void setAlignment(Qt::Alignment alignment)
*/
$method=|void|setAlignment|Qt::Alignment

/*
Qt::Alignment alignment() const
*/
$method=|Qt::Alignment|alignment|

/*
void setTopMargin(qreal margin)
*/
$method=|void|setTopMargin|qreal

/*
qreal topMargin() const
*/
$method=|qreal|topMargin|

/*
void setBottomMargin(qreal margin)
*/
$method=|void|setBottomMargin|qreal

/*
qreal bottomMargin() const
*/
$method=|qreal|bottomMargin|

/*
void setLeftMargin(qreal margin)
*/
$method=|void|setLeftMargin|qreal

/*
qreal leftMargin() const
*/
$method=|qreal|leftMargin|

/*
void setRightMargin(qreal margin)
*/
$method=|void|setRightMargin|qreal

/*
qreal rightMargin() const
*/
$method=|qreal|rightMargin|

/*
void setTextIndent(qreal aindent)
*/
$method=|void|setTextIndent|qreal

/*
qreal textIndent() const
*/
$method=|qreal|textIndent|

/*
void setIndent(int indent)
*/
$method=|void|setIndent|int

/*
int indent() const
*/
$method=|int|indent|

/*
void setLineHeight(qreal height, int heightType)
*/
$method=|void|setLineHeight|qreal,int

/*
qreal lineHeight(qreal scriptLineHeight, qreal scaling) const
*/
$internalMethod=|qreal|lineHeight,lineHeight1|qreal,qreal

/*
qreal lineHeight() const
*/
$internalMethod=|qreal|lineHeight,lineHeight2|

//[1]qreal lineHeight(qreal scriptLineHeight, qreal scaling) const
//[2]qreal lineHeight() const

HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextBlockFormat_lineHeight1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextBlockFormat_lineHeight2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int lineHeightType() const
*/
$method=|int|lineHeightType|

/*
void setNonBreakableLines(bool b)
*/
$method=|void|setNonBreakableLines|bool

/*
bool nonBreakableLines() const
*/
$method=|bool|nonBreakableLines|

/*
void setPageBreakPolicy(PageBreakFlags flags)
*/
$method=|void|setPageBreakPolicy|QTextBlockFormat::PageBreakFlags

/*
PageBreakFlags pageBreakPolicy() const
*/
$method=|QTextBlockFormat::PageBreakFlags|pageBreakPolicy|

#pragma ENDDUMP
