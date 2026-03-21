Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5467F136672
	for <keys@linux.kernel.org>; Sat, 21 Mar 2026 22:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774132197; cv=none; b=HfxS2b1Sj0knM2k01ZX1c+0MDy52YobNGIlPWqyCPuCgspo4cl+7JXt0ccpeO9MHkvuHhBZDTKmHSn5VTpR7v71yOOnPCltmC2mp+SG6hniURf3rcSOSIA3oZ/zdITZWimm0pdZw7PLyCpLC7SFQVmVu5kpLFeGdKY+/KnmD4XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774132197; c=relaxed/simple;
	bh=X34a+lyewzhUr8M3ORMSv7uxnZapXNP0SLtW/d1jJNU=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Jmgj9I6hlToNmb06upS6CmwGr78yB7QSMwSrbl25a4w5uIT3TKr9Q5zC4HTmYpRn82lOPEOvUHwKkT+Cow88tOR+/Blpqw3pLTxDBbcRZtvnlLe+tjikCOZxiW/dTY2bk+ulgYCxya+12woeEZKOqFT8TO6IfSS6v+oOn5Yz1P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Sv9lvnXa; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Sv9lvnXa"
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so16756625e9.3
        for <keys@linux.kernel.org>; Sat, 21 Mar 2026 15:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1774132193; x=1774736993; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e+eYs4aFoL8ojfdmKDpRja9bnHfBwvE77cqEjWhNE8E=;
        b=Sv9lvnXaukJajxUjEcxvp3Zn4jBHxzxx7q89n+y/erixrix0b6O14tflGNGQwP/Q2g
         5QjZE9q5HZLZBBsxWQVLWsI5ivU0Xu65JlBtGj22+vawUblnaeiP6ysMzz32fQ9o4eET
         SftYXey9EYhMas/c43VoV/4w8SL0gcncFgh2e6Jb39qvI/u4l1NExJJjEMCETxMHVNaz
         Kuu6ydHvYW5U+nZbYMPkBAHDcltDeMu1T7bK6COhlSj7PtOeUkL8UY8EIhvdbItfY+K5
         6NXEi4/ExDh1fqznI1HyR495ExTC1v7J4LMa9uDVUTJCDaBF+WpVyhxseEBRhcKaSZQ0
         nhRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774132193; x=1774736993;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e+eYs4aFoL8ojfdmKDpRja9bnHfBwvE77cqEjWhNE8E=;
        b=dGYaXCnarmDewSk+hQ8fAoEwwspe+YaWeNZ1q4+RWCsG6Wnpqe5/bpkBVyubRSVUnf
         nze80QsklTcjbRODg94m0u/L8RRVB3VEEs6nmpBd7cJnZZlNHaEial8Gple5t5Pma2MT
         l0+nx30VQN08B0mHxgmrNx2ZQVQDulquieDQ6H7Q8DI+iA8qck7BaKZx3GIzarPLlFDQ
         BCxJyqKhDwcOK0OWf4D7fwKuJKOLmmxwIrp4qMMxPYs0+RJDAlDWNC3FkwA779VBWhJ5
         LceaG6YHLDdFGAr/QspbAIxLWPwgxePWUYGRraUhU3eVtvf7+NbgCKlyDYvwLkc2uoZd
         gcuA==
X-Gm-Message-State: AOJu0Yy9APX+BQfSEu4250DO05WXWa2QOFr2rbqJmZH1GQ/lg9f3g6ST
	8Hh8m2eyJUVmsJ4fKD/wausBKTOb8IUnU4T0gOhOTheTKfWUR5X+Bq0RtaMVUDu3QBTY5VxCpVY
	xXzRNmp8ktQ==
X-Gm-Gg: ATEYQzytzlPIx2iJyHDD8CCR2Fnu7CMJoek3vrni5NbDH6TnX/nC4ev9TRQ2nhNkkWD
	zWb3asA8a4BlerB9eKPKuy1hTCHibnmc8Bs7R0tbpDVGV4+dfGJRXGuaRCBtWt4iZShvAEbHLYT
	HkoRo5YHnGAtw/TvuRVuTNNQ79JNiA8CgQHyxJN3c9Dow2PKBTkuLEVi07z2Kk2abz8MItkiq0X
	zavkghR5f7E6gXkSoLSaaJ06BLcms0GqoW4tttHcQ6BMZ95qjdoA2RRIAF6fOOJoX7vo/J4hTUL
	uSiF61D2RzD+nEKn94CmPfqaM9kmEFriUNFiXPCTfvAkvpXDRmXZjdCcb5ievByTWrFScb0/u5g
	mAl3FfSAlByxnQnKOu+pfQPrgfizOZ/3+3Dk1QZEUWy06prZPJonifh7X+VpqCT/+sw7Vl3GfFQ
	3P5MEItQNki/nbcE+BRt1HUW77irXe
X-Received: by 2002:a05:600c:c168:b0:485:40c6:f507 with SMTP id 5b1f17b1804b1-486ff04b4e9mr102234895e9.30.1774132192435;
        Sat, 21 Mar 2026 15:29:52 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-486fe8359acsm163650655e9.12.2026.03.21.15.29.51
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2026 15:29:51 -0700 (PDT)
Date: Sat, 21 Mar 2026 23:29:50 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Subject: [PATCH] Convert key meta data to utf-8
Message-ID: <ab8bbnvHZZTIavKZ@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cikuhibxy46bcddi"
Content-Disposition: inline


--cikuhibxy46bcddi
Content-Type: text/plain; protected-headers=v1; charset=binary
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH] Convert key meta data to utf-8
MIME-Version: 1.0

gpg defaults to latin1 if no locale environment variable specifies
something else. Up until recently the maintainer scripts for the kernel
keyring called gpg in a (nearly) empty environment and thus the meta
data for most keys is latin1 encoded.

Since the script was fixed to use UTF-8 for the meta data, Krzysztof
Wilczy=C5=84ski's certificate (7C64768D3DE334E7) was updated and is UTF-8
encoded now. So currently we have an encoding mixture.

Align all meta data to use UTF-8 encoding.
---
Hello,

I hope this patch makes it to the mailing list and your inboxes just
fine because naturally the encoding of this patch is strange. Also
patatt was unable to sign it so this mail is OpenPGP signed instead.

Best regards
Uwe

 keys/0B5B94C2EA94E246.asc |  4 ++--
 keys/1B52E30D2FA29DB8.asc |  6 +++---
 keys/1B93437D3B41629B.asc |  2 +-
 keys/26BCFA05FCF60E4C.asc |  4 ++--
 keys/4A55C497F744F705.asc |  8 ++++----
 keys/526A3E2C6E4E387D.asc |  2 +-
 keys/587552797312B583.asc |  6 +++---
 keys/7179716F488B5001.asc |  2 +-
 keys/8549F1144D045D36.asc |  4 ++--
 keys/9AFB7B8C9A5F5BBC.asc |  2 +-
 keys/CFDED9A2FD1314F0.asc |  2 +-
 keys/D247E5D99FE76629.asc |  6 +++---
 keys/E2DCDD9132669BD6.asc | 14 +++++++-------
 keys/E9C315B1AE8CC723.asc |  4 ++--
 keys/F1591ABD9588DA5F.asc |  4 ++--
 keys/FA2ED12D3E7E013F.asc |  4 ++--
 16 files changed, 37 insertions(+), 37 deletions(-)

diff --git a/keys/0B5B94C2EA94E246.asc b/keys/0B5B94C2EA94E246.asc
index 3c722fc61f71..720c3778db7d 100644
--- a/keys/0B5B94C2EA94E246.asc
+++ b/keys/0B5B94C2EA94E246.asc
@@ -1,7 +1,7 @@
 pub   rsa4096 2021-11-14 [C] [expires: 2031-11-12]
       61B7F1709D40CC581457F8E10B5B94C2EA94E246
-uid                      Micka=EBl Sala=FCn <mic@digikod.net>
-uid                      Micka=EBl Sala=FCn <mic@kernel.org>
+uid                      Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
+uid                      Micka=C3=ABl Sala=C3=BCn <mic@kernel.org>
 sub   ed25519 2021-11-14 [S] [expires: 2027-01-20]
       95C81B61155E224D6FD5535FE5E3D0E88C82F6D2
 sub   rsa4096 2022-03-04 [E] [expires: 2031-03-02]
diff --git a/keys/1B52E30D2FA29DB8.asc b/keys/1B52E30D2FA29DB8.asc
index 8e0158dea296..988a8d81b199 100644
--- a/keys/1B52E30D2FA29DB8.asc
+++ b/keys/1B52E30D2FA29DB8.asc
@@ -1,8 +1,8 @@
 pub   rsa3072 2016-03-08 [SC]
       5E9BC6B40D8558B07C7ACC801B52E30D2FA29DB8
-uid                      Radim Kr\xc4\x8dm=E1\xc5\x99 <radim@krcmar.dev>
-uid                      Radim Kr\xc4\x8dm=E1\xc5\x99 <radimkrcmar@hpx.cz>
-uid                      Radim Kr\xc4\x8dm=E1\xc5\x99 <rkrcmar@redhat.com>
+uid                      Radim Kr=C4=8Dm=C3=A1=C5=99 <radim@krcmar.dev>
+uid                      Radim Kr=C4=8Dm=C3=A1=C5=99 <radimkrcmar@hpx.cz>
+uid                      Radim Kr=C4=8Dm=C3=A1=C5=99 <rkrcmar@redhat.com>
 sub   rsa2048 2016-03-08 [E]
       1A682F43208866E3879F4519EDB495D222B32359
 sub   rsa2048 2016-03-08 [S]
diff --git a/keys/1B93437D3B41629B.asc b/keys/1B93437D3B41629B.asc
index 10017ae846b0..530e8fa0b9b8 100644
--- a/keys/1B93437D3B41629B.asc
+++ b/keys/1B93437D3B41629B.asc
@@ -2,7 +2,7 @@ pub   rsa4096 2015-05-01 [SC] [expires: 2027-05-04]
       9BD07E0E0C51F8D59677B7541B93437D3B41629B
 uid                      Krzysztof Kozlowski <k.kozlowski.k@gmail.com>
 uid                      Krzysztof Kozlowski <krzk@kernel.org>
-uid                      Krzysztof Koz\xc5\x82owski <k.kozlowski.k@gmail.c=
om>
+uid                      Krzysztof Koz=C5=82owski <k.kozlowski.k@gmail.com>
 uid                      Krzysztof Kozlowski <krzysztof.kozlowski@linaro.o=
rg>
 uid                      Krzysztof Kozlowski <krzysztof.kozlowski@oss.qual=
comm.com>
 sub   rsa4096 2015-05-01 [E] [expires: 2027-05-04]
diff --git a/keys/26BCFA05FCF60E4C.asc b/keys/26BCFA05FCF60E4C.asc
index 907c91669dcf..b205057df475 100644
--- a/keys/26BCFA05FCF60E4C.asc
+++ b/keys/26BCFA05FCF60E4C.asc
@@ -1,8 +1,8 @@
 pub   rsa4064 2016-05-29 [SC] [expires: 2026-05-27]
       95C62D2248EE0D8A44C3D3B426BCFA05FCF60E4C
-uid                      Marek Beh=FAn <kabel@kernel.org>
+uid                      Marek Beh=C3=BAn <kabel@kernel.org>
 uid                      Marek Behun <kabel@blackhole.sk>
-uid                      Marek Beh=FAn <marek.behun@nic.cz>
+uid                      Marek Beh=C3=BAn <marek.behun@nic.cz>
 sub   rsa4064 2016-05-29 [E] [expires: 2026-05-27]
       CA49A590D97148D89162602CB81F800D3C7D948E
=20
diff --git a/keys/4A55C497F744F705.asc b/keys/4A55C497F744F705.asc
index 5082ee6b3259..6b967eec1cc0 100644
--- a/keys/4A55C497F744F705.asc
+++ b/keys/4A55C497F744F705.asc
@@ -1,10 +1,10 @@
 pub   rsa4096 2009-09-29 [SC]
       DE6162B5616BA9C9CAAC03074A55C497F744F705
-uid                      Toke H=F8iland-J=F8rgensen <toke@toke.dk>
+uid                      Toke H=C3=B8iland-J=C3=B8rgensen <toke@toke.dk>
 uid                      Toke H\xf8\x69land-J\xf8\x72gensen <toke@tohojo.d=
k>
-uid                      Toke H=F8iland-J=F8rgensen <tohojo@ruc.dk>
-uid                      Toke H=F8iland-J=F8rgensen <toke@tohojo.dk>
-uid                      Toke H=F8iland-J=F8rgensen <toke.hoiland-jorgense=
n@kau.se>
+uid                      Toke H=C3=B8iland-J=C3=B8rgensen <tohojo@ruc.dk>
+uid                      Toke H=C3=B8iland-J=C3=B8rgensen <toke@tohojo.dk>
+uid                      Toke H=C3=B8iland-J=C3=B8rgensen <toke.hoiland-jo=
rgensen@kau.se>
 sub   rsa2048 2012-09-28 [S]
       10B21313305272727D6AD09B435E106CF5FAEB4F
 sub   rsa2048 2012-09-28 [E]
diff --git a/keys/526A3E2C6E4E387D.asc b/keys/526A3E2C6E4E387D.asc
index ecb592fca89c..f0748ce4d3fa 100644
--- a/keys/526A3E2C6E4E387D.asc
+++ b/keys/526A3E2C6E4E387D.asc
@@ -1,6 +1,6 @@
 pub   rsa4096 2017-03-01 [SC]
       6213B7AF5C53E40214672770526A3E2C6E4E387D
-uid                      Ji\xc5\x99=ED P=EDrko <jiri@resnulli.us>
+uid                      Ji=C5=99=C3=AD P=C3=ADrko <jiri@resnulli.us>
 sub   rsa4096 2017-03-01 [E]
       01193B8EA6086B7A40AD541D8C7779F1A52411DF
=20
diff --git a/keys/587552797312B583.asc b/keys/587552797312B583.asc
index d5ba251d9140..4569dad3f050 100644
--- a/keys/587552797312B583.asc
+++ b/keys/587552797312B583.asc
@@ -1,8 +1,8 @@
 pub   rsa4096 2023-07-21 [C] [expires: 2027-07-20]
       67EE213A19527D7344DCDCF5587552797312B583
-uid                      Thomas Wei=DFschuh <thomas@t-8ch.de>
-uid                      Thomas Wei=DFschuh <linux@weissschuh.net>
-uid                      Thomas Wei=DFschuh <thomas@weissschuh.net>
+uid                      Thomas Wei=C3=9Fschuh <thomas@t-8ch.de>
+uid                      Thomas Wei=C3=9Fschuh <linux@weissschuh.net>
+uid                      Thomas Wei=C3=9Fschuh <thomas@weissschuh.net>
 sub   cv25519 2023-07-21 [E]
       5542FEFC5FEC2197EF6B425B253CD70B63434B3F
 sub   ed25519 2023-07-21 [S]
diff --git a/keys/7179716F488B5001.asc b/keys/7179716F488B5001.asc
index b95f4969c2be..c1ea4d7104f3 100644
--- a/keys/7179716F488B5001.asc
+++ b/keys/7179716F488B5001.asc
@@ -1,6 +1,6 @@
 pub   ed25519 2023-08-09 [SC] [expires: 2033-08-06]
       DACD3881356D8586E2750E3A7179716F488B5001
-uid                      Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com>
+uid                      Ilpo J=C3=A4rvinen <ilpo.jarvinen@linux.intel.com>
 sub   cv25519 2023-08-09 [E] [expires: 2033-08-06]
       62CE12307093D9C9C7CDE378ED55A276B2F92283
 sub   ed25519 2023-08-09 [S] [expires: 2033-08-06]
diff --git a/keys/8549F1144D045D36.asc b/keys/8549F1144D045D36.asc
index 1e3567e5224e..3025359b7c0a 100644
--- a/keys/8549F1144D045D36.asc
+++ b/keys/8549F1144D045D36.asc
@@ -1,8 +1,8 @@
 pub   rsa4096 2011-10-04 [SC]
       E7F6CF91A0D1ADA78C9C17898549F1144D045D36
-uid                      J=E9r=F4me Glisse <glisse@freedesktop.org>
+uid                      J=C3=A9r=C3=B4me Glisse <glisse@freedesktop.org>
 uid                      Jerome Glisse <j.glisse@gmail.com>
-uid                      J=E9r=F4me Glisse <jglisse@redhat.com>
+uid                      J=C3=A9r=C3=B4me Glisse <jglisse@redhat.com>
 sub   rsa4096 2011-10-04 [E]
       EC1375905C961148BE1565FFDEE72FBAE3CE8939
=20
diff --git a/keys/9AFB7B8C9A5F5BBC.asc b/keys/9AFB7B8C9A5F5BBC.asc
index ab82ad9f15f9..f7988256bcfe 100644
--- a/keys/9AFB7B8C9A5F5BBC.asc
+++ b/keys/9AFB7B8C9A5F5BBC.asc
@@ -1,7 +1,7 @@
 pub   rsa2048 2006-04-29 [SC]
       795D0851095CAACA16CA79259AFB7B8C9A5F5BBC
 uid                      Heiko Stuebner <heiko@sntech.de>
-uid                      Heiko St=FCbner <heiko@sntech.de>
+uid                      Heiko St=C3=BCbner <heiko@sntech.de>
 uid                      Heiko Stuebner <mmind@debian.org>
 uid                      Heiko Stuebner <mmind@kernel.org>
 uid                      Heiko Stuebner <heiko.stuebner@theobroma-systems.=
com>
diff --git a/keys/CFDED9A2FD1314F0.asc b/keys/CFDED9A2FD1314F0.asc
index a23273d3084f..edd6e2990364 100644
--- a/keys/CFDED9A2FD1314F0.asc
+++ b/keys/CFDED9A2FD1314F0.asc
@@ -1,6 +1,6 @@
 pub   rsa4096 2017-08-23 [SC]
       9F2AB6F1F2BBEE7621C1B620CFDED9A2FD1314F0
-uid                      Michal Koutn=FD <mkoutny@suse.com>
+uid                      Michal Koutn=C3=BD <mkoutny@suse.com>
 sub   ed25519 2023-01-13 [A]
       47DE106A4B860621B0D6E63DD8CF730A95E2521C
 sub   ed25519 2025-06-10 [S] [expires: 2026-06-10]
diff --git a/keys/D247E5D99FE76629.asc b/keys/D247E5D99FE76629.asc
index 0ba695e54bd0..365a344366c4 100644
--- a/keys/D247E5D99FE76629.asc
+++ b/keys/D247E5D99FE76629.asc
@@ -1,8 +1,8 @@
 pub   rsa4096 2021-01-14 [C] [expires: 2030-12-24]
       9BF0AC885A3F7F2A5D8187FED247E5D99FE76629
-uid                      Bj=F6rn T=F6pel <bjorn.topel@gmail.com>
-uid                      Bj=F6rn T=F6pel <bjorn@topel.se>
-uid                      Bj=F6rn T=F6pel <bjorn@kernel.org>
+uid                      Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
+uid                      Bj=C3=B6rn T=C3=B6pel <bjorn@topel.se>
+uid                      Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.org>
 sub   rsa2048 2021-01-14 [E]
       B585873F74558443D99F8F296497238C803718F9
 sub   rsa2048 2021-01-14 [S]
diff --git a/keys/E2DCDD9132669BD6.asc b/keys/E2DCDD9132669BD6.asc
index 8f9d920a4aed..efbfc0b7a949 100644
--- a/keys/E2DCDD9132669BD6.asc
+++ b/keys/E2DCDD9132669BD6.asc
@@ -1,12 +1,12 @@
 pub   rsa4096 2010-06-15 [SC] [expires: 2027-06-21]
       0D2511F322BFAB1C1580266BE2DCDD9132669BD6
-uid                      Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
-uid                      Uwe Kleine-K=F6nig <uwe@kleine-k=F6nig.de>
-uid                      Uwe Kleine-K=F6nig <ukleinek@lug-freiburg.de>
-uid                      Uwe Kleine-K=F6nig <ukleinek@strlen.de>
-uid                      Uwe Kleine-K=F6nig <ukleinek@debian.org>
-uid                      Uwe Kleine-K=F6nig <ukleinek@kernel.org>
-uid                      Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
+uid                      Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
+uid                      Uwe Kleine-K=C3=B6nig <uwe@kleine-k=C3=B6nig.de>
+uid                      Uwe Kleine-K=C3=B6nig <ukleinek@lug-freiburg.de>
+uid                      Uwe Kleine-K=C3=B6nig <ukleinek@strlen.de>
+uid                      Uwe Kleine-K=C3=B6nig <ukleinek@debian.org>
+uid                      Uwe Kleine-K=C3=B6nig <ukleinek@kernel.org>
+uid                      Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.c=
om>
 sub   rsa2048 2023-03-17 [S] [expires: 2027-06-21]
       3F81AC693A7A1E5989ADFED38F80FB587D12FE4E
 sub   rsa2048 2023-03-17 [E] [expires: 2027-06-21]
diff --git a/keys/E9C315B1AE8CC723.asc b/keys/E9C315B1AE8CC723.asc
index 4265c8446086..550df7ca5c7a 100644
--- a/keys/E9C315B1AE8CC723.asc
+++ b/keys/E9C315B1AE8CC723.asc
@@ -1,7 +1,7 @@
 pub   rsa4096 2015-09-22 [SC]
       7575A61C28BBA814D32A0C6EE9C315B1AE8CC723
-uid                      Antoine T=E9nart <antoine.tenart@ack.tf>
-uid                      Antoine T=E9nart <antoine.tenart@free-electrons.c=
om>
+uid                      Antoine T=C3=A9nart <antoine.tenart@ack.tf>
+uid                      Antoine T=C3=A9nart <antoine.tenart@free-electron=
s.com>
=20
 -----BEGIN PGP PUBLIC KEY BLOCK-----
=20
diff --git a/keys/F1591ABD9588DA5F.asc b/keys/F1591ABD9588DA5F.asc
index 9b9e6c9183ab..24f5dfc1d05b 100644
--- a/keys/F1591ABD9588DA5F.asc
+++ b/keys/F1591ABD9588DA5F.asc
@@ -1,7 +1,7 @@
 pub   rsa4096 2016-09-15 [SC]
       9976695FE98693307BF360A2F1591ABD9588DA5F
-uid                      Niklas S=F6derlund <niklas.soderlund@ragnatech.se>
-uid                      Niklas S=F6derlund <niklas@kernel.org>
+uid                      Niklas S=C3=B6derlund <niklas.soderlund@ragnatech=
=2Ese>
+uid                      Niklas S=C3=B6derlund <niklas@kernel.org>
 sub   rsa4096 2016-09-15 [E] [expires: 2029-05-25]
       C50B5BD8C17C4F6BB0CBAFDEA563EAE925CE0504
 sub   rsa4096 2016-09-15 [S] [expires: 2029-05-25]
diff --git a/keys/FA2ED12D3E7E013F.asc b/keys/FA2ED12D3E7E013F.asc
index 2fc397c89a39..96927e851f87 100644
--- a/keys/FA2ED12D3E7E013F.asc
+++ b/keys/FA2ED12D3E7E013F.asc
@@ -1,7 +1,7 @@
 pub   rsa4096 2011-10-13 [SC]
       174F03471BCC221A61756F96FA2ED12D3E7E013F
-uid                      Andreas F=E4rber <afaerber@suse.de>
-uid                      Andreas F=E4rber <afaerber@suse.com>
+uid                      Andreas F=C3=A4rber <afaerber@suse.de>
+uid                      Andreas F=C3=A4rber <afaerber@suse.com>
 sub   rsa4096 2011-10-13 [E]
       59D7F36F57FEB4B55063CC35F522F0785F629926
=20
--=20
2.47.3


--cikuhibxy46bcddi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmm/G9sACgkQj4D7WH0S
/k7tMwgAhlq+oFt/CUkVlDzmLavTd+BgzDQeO64vPTbItm80E6RgIsOELhZMjvCP
lAtoNVdUDcjBOOZWZpiwwLlvsUehxD6HHTstmA5nT8CqzuFnWzM711dtohBAPZc/
NAXBwZnu+OxYUozp7+AofYyfkDT/LIBgJaOy3i16TSnfRrfFCNa5TuuNltIfgGr1
GZ3boKtflQiqoBjOW2Gt3d3xajyZJJ1HSjZe0vIf98nnpeAW5E9GPZNJNJTDieur
NqcTDApg6f12gOf0iEXj9FG2rsVVnc7sworP9WUO2lHpWCwuWmdpHSVmOMFV7dU3
eGHAsBTvczjZF4YrTkXW5A6SaAJ7zA==
=vnU5
-----END PGP SIGNATURE-----

--cikuhibxy46bcddi--
