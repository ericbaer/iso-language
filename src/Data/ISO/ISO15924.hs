-----------------------------------------------------------------------------
--
-- Module      :  Data.ISO.ISO15924
-- Copyright   :
-- License     :  BSD3
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------
{-# LANGUAGE CPP #-}
#ifdef GENERICS
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
#endif
module Data.ISO.ISO15924 (
    Script(..)
) where

#ifdef GENERICS
import Data.Data
import GHC.Generics
#endif

-- See <http://www.unicode.org/iso15924/iso15924-codes.html>
data Script =
      Afak -- | 439; Afaka; 2010-12-21
    | Aghb -- | 239; Caucasian Albanian; 2012-10-16
    | Ahom -- | 338; Ahom, Tai Ahom; 2012-11-01
    | Arab -- | 160; Arabic; 2004-05-01
    | Armi -- | 124; Imperial Aramaic; 2009-06-01
    | Armn -- | 230; Armenian; 2004-05-01
    | Avst -- | 134; Avestan; 2009-06-01
    | Bali -- | 360; Balinese; 2006-10-10
    | Bamu -- | 435; Bamum; 2009-06-01
    | Bass -- | 259; Bassa Vah; 2010-03-26
    | Batk -- | 365; Batak; 2010-07-23
    | Beng -- | 325; Bengali; 2004-05-01
    | Blis -- | 550; Blissymbols; 2004-05-01
    | Bopo -- | 285; Bopomofo; 2004-05-01
    | Brah -- | 300; Brahmi; 2010-07-23
    | Brai -- | 570; Braille; 2004-05-01
    | Bugi -- | 367; Buginese; 2006-06-21
    | Buhd -- | 372; Buhid; 2004-05-01
    | Cakm -- | 349; Chakma; 2012-02-06
    | Cans -- | 440; Unified Canadian Aboriginal Syllabics; 2004-05-29
    | Cari -- | 201; Carian; 2007-07-02
    | Cham -- | 358; Cham; 2009-11-11
    | Cher -- | 445; Cherokee; 2004-05-01
    | Cirt -- | 291; Cirth; 2004-05-01
    | Copt -- | 204; Coptic; 2006-06-21
    | Cprt -- | 403; Cypriot; 2004-05-01
    | Cyrl -- | 220; Cyrillic; 2004-05-01
    | Cyrs -- | 221; Cyrillic (Old Church Slavonic variant); 2004-05-01
    | Deva -- | 315; Devanagari (Nagari); 2004-05-01
    | Dsrt -- | 250; Deseret (Mormon); 2004-05-01
    | Dupl -- | 755; Duployan shorthand, Duployan stenography; 2010-07-18
    | Egyd -- | 70; Egyptian demotic; 2004-05-01
    | Egyh -- | 60; Egyptian hieratic; 2004-05-01
    | Egyp -- | 50; Egyptian hieroglyphs; 2009-06-01
    | Elba -- | 226; Elbasan; 2010-07-18
    | Ethi -- | 430; Ethiopic (Geʻez); 2004-10-25
    | Geok -- | 241; Khutsuri (Asomtavruli and Nuskhuri); 2012-10-16
    | Geor -- | 240; Georgian (Mkhedruli); 2004-05-29
    | Glag -- | 225; Glagolitic; 2006-06-21
    | Goth -- | 206; Gothic; 2004-05-01
    | Gran -- | 343; Grantha; 2009-11-11
    | Grek -- | 200; Greek; 2004-05-01
    | Gujr -- | 320; Gujarati; 2004-05-01
    | Guru -- | 310; Gurmukhi; 2004-05-01
    | Hang -- | 286; Hangul (Hangŭl, Hangeul); 2004-05-29
    | Hani -- | 500; Han (Hanzi, Kanji, Hanja); 2009-02-23
    | Hano -- | 371; Hanunoo (Hanunóo); 2004-05-29
    | Hans -- | 501; Han (Simplified variant); 2004-05-29
    | Hant -- | 502; Han (Traditional variant); 2004-05-29
    | Hatr -- | 127; Hatran; 2012-11-01
    | Hebr -- | 125; Hebrew; 2004-05-01
    | Hira -- | 410; Hiragana; 2004-05-01
    | Hluw -- | 80; Anatolian Hieroglyphs (Luwian Hieroglyphs,
           --       Hittite Hieroglyphs); 2011-12-09
    | Hmng -- | 450; Pahawh Hmong; 2004-05-01
    | Hrkt -- | 412; Japanese syllabaries (alias for Hiragana + Katakana);
           --        2011-06-21
    | Hung -- | 176; Old Hungarian (Hungarian Runic); 2012-10-16
    | Inds -- | 610; Indus (Harappan); 2004-05-01
    | Ital -- | 210; Old Italic (Etruscan, Oscan, etc.); 2004-05-29
    | Java -- | 361; Javanese; 2009-06-01
    | Jpan -- | 413; Japanese (alias for Han + Hiragana + Katakana); 2006-06-21
    | Jurc -- | 510; Jurchen; 2010-12-21
    | Kali -- | 357; Kayah Li; 2007-07-02
    | Kana -- | 411; Katakana; 2004-05-01
    | Khar -- | 305; Kharoshthi; 2006-06-21
    | Khmr -- | 355; Khmer; 2004-05-29
    | Khoj -- | 322; Khojki; 2011-06-21
    | Knda -- | 345; Kannada; 2004-05-29
    | Kore -- | 287; Korean (alias for Hangul + Han); 2007-06-13
    | Kpel -- | 436; Kpelle; 2010-03-26
    | Kthi -- | 317; Kaithi; 2009-06-01
    | Lana -- | 351; Tai Tham (Lanna); 2009-06-01
    | Laoo -- | 356; Lao; 2004-05-01
    | Latf -- | 217; Latin (Fraktur variant); 2004-05-01
    | Latg -- | 216; Latin (Gaelic variant); 2004-05-01
    | Latn -- | 215; Latin; 2004-05-01
    | Lepc -- | 335; Lepcha (Róng); 2007-07-02
    | Limb -- | 336; Limbu; 2004-05-29
    | Lina -- | 400; Linear A; 2004-05-01
    | Linb -- | 401; Linear B; 2004-05-29
    | Lisu -- | 399; Lisu (Fraser); 2009-06-01
    | Loma -- | 437; Loma; 2010-03-26
    | Lyci -- | 202; Lycian; 2007-07-02
    | Lydi -- | 116; Lydian; 2007-07-02
    | Mahj -- | 314; Mahajani; 2012-10-16
    | Mand -- | 140; Mandaic, Mandaean; 2010-07-23
    | Mani -- | 139; Manichaean; 2007-07-15
    | Maya -- | 90; Mayan hieroglyphs; 2004-05-01
    | Mend -- | 438; Mende Kikakui; 2013-10-12
    | Merc -- | 101; Meroitic Cursive; 2012-02-06
    | Mero -- | 100; Meroitic Hieroglyphs; 2012-02-06
    | Mlym -- | 347; Malayalam; 2004-05-01
    | Modi -- | 324; Modi, Moḍī; 2013-10-12
    | Mong -- | 145; Mongolian; 2004-05-01
    | Moon -- | 218; Moon (Moon code, Moon script, Moon type); 2006-12-11
    | Mroo -- | 199; Mro, Mru; 2010-12-21
    | Mtei -- | 337; Meitei Mayek (Meithei, Meetei); 2009-06-01
    | Mult -- | 323; Multani; 2012-11-01
    | Mymr -- | 350; Myanmar (Burmese); 2004-05-01
    | Narb -- | 106; Old North Arabian (Ancient North Arabian); 2010-03-26
    | Nbat -- | 159; Nabataean; 2010-03-26
    | Nkgb -- | 420; Nakhi Geba ('Na-'Khi ²Ggŏ-¹baw, Naxi Geba); 2009-02-23
    | Nkoo -- | 165; N’Ko; 2006-10-10
    | Nshu -- | 499; Nüshu; 2010-12-21
    | Ogam -- | 212; Ogham; 2004-05-01
    | Olck -- | 261; Ol Chiki (Ol Cemet’, Ol, Santali); 2007-07-02
    | Orkh -- | 175; Old Turkic, Orkhon Runic; 2009-06-01
    | Orya -- | 327; Oriya; 2004-05-01
    | Osma -- | 260; Osmanya; 2004-05-01
    | Palm -- | 126; Palmyrene; 2010-03-26
    | Pauc -- | 263; Pau Cin Hau; 2013-10-12
    | Perm -- | 227; Old Permic; 2004-05-01
    | Phag -- | 331; Phags-pa; 2006-10-10
    | Phli -- | 131; Inscriptional Pahlavi; 2009-06-01
    | Phlp -- | 132; Psalter Pahlavi; 2007-11-26
    | Phlv -- | 133; Book Pahlavi; 2007-07-15
    | Phnx -- | 115; Phoenician; 2006-10-10
    | Plrd -- | 282; Miao (Pollard); 2012-02-06
    | Prti -- | 130; Inscriptional Parthian; 2009-06-01
    | Qaaa -- | 900; Reserved for private use (start); 2004-05-29
    | Qabx -- | 949; Reserved for private use (end); 2004-05-29
    | Rjng -- | 363; Rejang (Redjang, Kaganga); 2009-02-23
    | Roro -- | 620; Rongorongo; 2004-05-01
    | Runr -- | 211; Runic; 2004-05-01
    | Samr -- | 123; Samaritan; 2009-06-01
    | Sara -- | 292; Sarati; 2004-05-29
    | Sarb -- | 105; Old South Arabian; 2009-06-01
    | Saur -- | 344; Saurashtra; 2007-07-02
    | Sgnw -- | 95; SignWriting; 2006-10-10
    | Shaw -- | 281; Shavian (Shaw); 2004-05-01
    | Shrd -- | 319; Sharada, Śāradā; 2012-02-06
    | Sidd -- | 302; Siddham, Siddhaṃ, Siddhamātṛkā; 2013-10-12
    | Sind -- | 318; Khudawadi, Sindhi; 2010-12-21
    | Sinh -- | 348; Sinhala; 2004-05-01
    | Sora -- | 398; Sora Sompeng; 2012-02-06
    | Sund -- | 362; Sundanese; 2007-07-02
    | Sylo -- | 316; Syloti Nagri; 2006-06-21
    | Syrc -- | 135; Syriac; 2004-05-01
    | Syre -- | 138; Syriac (Estrangelo variant); 2004-05-01
    | Syrj -- | 137; Syriac (Western variant); 2004-05-01
    | Syrn -- | 136; Syriac (Eastern variant); 2004-05-01
    | Tagb -- | 373; Tagbanwa; 2004-05-01
    | Takr -- | 321; Takri, Ṭākrī, Ṭāṅkrī; 2012-02-06
    | Tale -- | 353; Tai Le; 2004-10-25
    | Talu -- | 354; New Tai Lue; 2006-06-21
    | Taml -- | 346; Tamil; 2004-05-01
    | Tang -- | 520; Tangut; 2010-12-21
    | Tavt -- | 359; Tai Viet; 2009-06-01
    | Telu -- | 340; Telugu; 2004-05-01
    | Teng -- | 290; Tengwar; 2004-05-01
    | Tfng -- | 120; Tifinagh (Berber); 2006-06-21
    | Tglg -- | 370; Tagalog (Baybayin, Alibata); 2009-02-23
    | Thaa -- | 170; Thaana; 2004-05-01
    | Thai -- | 352; Thai; 2004-05-01
    | Tibt -- | 330; Tibetan; 2004-05-01
    | Tirh -- | 326; Tirhuta; 2011-12-09
    | Ugar -- | 40; Ugaritic; 2004-05-01
    | Vaii -- | 470; Vai; 2007-07-02
    | Visp -- | 280; Visible Speech; 2004-05-01
    | Wara -- | 262; Warang Citi (Varang Kshiti); 2009-11-11
    | Wole -- | 480; Woleai; 2010-12-21
    | Xpeo -- | 30; Old Persian; 2006-06-21
    | Xsux -- | 20; Cuneiform, Sumero-Akkadian; 2006-10-10
    | Yiii -- | 460; Yi; 2004-05-01
    | Zinh -- | 994; Code for inherited script; 2009-02-23
    | Zmth -- | 995; Mathematical notation; 2007-11-26
    | Zsym -- | 996; Symbols; 2007-11-26
    | Zxxx -- | 997; Code for unwritten documents; 2011-06-21
    | Zyyy -- | 998; Code for undetermined script; 2004-05-29
    | Zzzz -- | 999; Code for uncoded script; 2006-10-10
#ifdef GENERICS
    deriving (Show, Eq, Ord, Enum, Bounded, Typeable, Data, Generic)
#else
    deriving (Show, Eq, Ord, Enum, Bounded)
#endif
