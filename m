Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1D121FF3F
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 07:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754380784; cv=none; b=Pjq+A+9miJ7a2SZYxP106upkLDd4o2Lzd+snToFQEzfbElTp6EIS0KYR8znn/7O1ZT/07su9OPoF+yUGU9zoi2g5HYCQtMZ7EEBPLb8Iy57Svxf3dbW0zkrN9Z78LB8Gz55xzH2cKOki3IpWMEL9Y8sOjTydlk91O3cw/hg9Hms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754380784; c=relaxed/simple;
	bh=7bTUEz37wGqaZEgS7zaYoJcWq33Mx/jAFIHOA8gbXGs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VZj7Er47ECfy9igrWrb8HbOmh6iQWMdxu7hrQ8w4A0OF0hPtyWEsiX8KYxj3RB9vLrrexK6aObFHfrKGBuAYZy6odoGPTkKKxsH+OWjifHAznjSNHeV82n6o18MVxYf18RAxaY9aZ2QH0hFE8fqm3KElxwY43svSB7jcFwjszoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TS87ng5Z; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TS87ng5Z"
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-af910372ab3so992324266b.1
        for <keys@linux.kernel.org>; Tue, 05 Aug 2025 00:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754380780; x=1754985580; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r4jOH7iLaF15GTCsIIHxA5tNjG7L3Dct2SNd3alC/Ns=;
        b=TS87ng5ZTsHa1YIQB5CE24Bl0HLPwjNTrPHI4UcoTqSdySSwpdRrLgWu5iT5jPmwIw
         NgWvZ8SKcNZZPPkIT7bMjxzakNoVi9dqo9r5TxZs9ghp2VJf3gfHd+OrY30aLMWuZ7VA
         z1eE88X37rfXsnclTHWhWdXKLkEn+Ce8tWGx80MFlulAydUQD4vrLet8zDzgS0Myc57F
         1wvucETctiqB/X+dzp956e8cDKl0b1CIxYvTpt3rkA/hml2I/95S9qN3ehnF3QiKS4rw
         0y4vC+qYgR6Nxxn1D+3EOB0kTrxJjFRAF1xJLEP94OIFd6G4XwBouZTWl59hXpY+5ErR
         qlBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754380780; x=1754985580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r4jOH7iLaF15GTCsIIHxA5tNjG7L3Dct2SNd3alC/Ns=;
        b=PKPbjiqlf0hpv94fV2v0tvL0fixktA6Kfbi94btGQClW0B/s9d3N0ofYfaIo3jGKrC
         iTsXh1806LAOkUqP4ql2F8noWyBHFnkH7edlP/IPU4R9l+EG5arEmzvhD9mv7nnuMocE
         M7WT7Cdf2Hl5Dqk+vRhCQBag9ENLNvGGyoasn+LxwEhHL0ep7MG3PdWf7VI+T8T2kpfa
         yQABfcFQFDgmusC6W5R3ykAUlpfruQ9mGLdQ5m7TPC9WzwL1CRzwhhVr/cUU029vmnOf
         M0zR826Ekpl2Y6OTsGaW7v/1zSw8qfAWRc0r92+C8RHY85BiVR+Wuvdmmj3/lM0+RXFR
         fYpg==
X-Gm-Message-State: AOJu0Yw3KZqHr9Oot9YBDIiuWn8VRkRPefCdQRleM26k0cpANN5SSWQD
	UCLtX64cRkh4/DSublY088xlZsvif+838yi78FnPowfAFc1kpOakiPdd1xhovE90HLcjl1mUo/A
	e6VMk
X-Gm-Gg: ASbGncu3AMRw6dmwJnatUL0yi2BvVOLEE+guuTnhIhqjwwyyxI3F7s2slY6Bbf45hfV
	Q1jgWmoCNGt5s36zx13Fzw2naKTj7MGGXQIFBTPQDrbtYWv+AdzKUIBvhcT9a89Av9soKGG8/fR
	ft+2LzZemJM0IeezhACi5bKiprVLFdan4k3Xg4YDQWO2vGKW5Qy8h2Z+/oQW97uPzYTIsvLvbzR
	So624zO8MNOcyCxkvFJEBZTTRS+WnjBPjZ42hIESkjNjvqA6rR5BvAhBR8iTlYziRsXvlP/JCcY
	4bBUrnsFKUNp21NPWMnEw16G5kOmijqL7lNhoIRQWDHuG6Bf/E7lhORFm7Erq7GgSD6oAhzAoB5
	wv0+zOeH1FXEsl8iL4YxUsVeVbJqbSS1kM8Oy+A==
X-Google-Smtp-Source: AGHT+IHzFqoL1i+slAcXtA0JQqtCmfg6F7oBwsecNb8sf6Zk8lw04sc4ELvTEy8F1viUgzG+vvFdCA==
X-Received: by 2002:a17:907:e895:b0:ae3:c777:6e5e with SMTP id a640c23a62f3a-af97d34fd91mr269228366b.19.1754380779985;
        Tue, 05 Aug 2025 00:59:39 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af93b4d4c27sm601944966b.66.2025.08.05.00.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 00:59:39 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Cc: Joel Granados <joel.granados@kernel.org>,
	Joel Granados <joel.granados@joelgranados.com>,
	Joel Granados <j.granados@samsung.com>
Subject: [PATCH 6/7] Remove expired signing subkey of Joel Granados
Date: Tue,  5 Aug 2025 09:59:07 +0200
Message-ID: <95d951d396bf2034e4d090f82f22b0b15b73d8dc.1754379198.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
References: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3414; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=7bTUEz37wGqaZEgS7zaYoJcWq33Mx/jAFIHOA8gbXGs=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBokbnU9m65fWA//reJee/amQ8F/cnZOs0HWbmqz fS1VsBDYY+JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaJG51AAKCRCPgPtYfRL+ TvPTCACBH0YkenKqjhLn4ulXpw2Zzdr0Ea/mIyCZvhT9205kpNaZi6KGY6B9eBDs0wGX52aN7VV fJxSty1gRz13TW4AU3PqouH7RKlIaXjikeYm8uZLEPaTW3xP8GIf5zK32CU7KjPsbT9SemQH1vo RlDuIJ+UV5HuNYssjIdpmNxejjQoWtZLldyqLEX013WncN/KtC0WYf0d1KXKCtU2Jzk/cQmaKSL HPCooXsKvOtZM7FRS5N0Da6JasAvK3nKnCFt9FkHggTmw+vr1ooHtdj+yUn8Bljd4H7omi/GqQc 3S8Abi71A9KdE5BnMc9iXHDrp63fzuvpd60l5P5unv8kZNqa
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The subkey expired in November 2024.
---
 keys/5895FAAC338C6E77.asc | 40 ++-------------------------------------
 1 file changed, 2 insertions(+), 38 deletions(-)

diff --git a/keys/5895FAAC338C6E77.asc b/keys/5895FAAC338C6E77.asc
index 9a228cca2ccd..b435101ed14f 100644
--- a/keys/5895FAAC338C6E77.asc
+++ b/keys/5895FAAC338C6E77.asc
@@ -10,8 +10,6 @@ sub   rsa3072 2020-10-29 [S] [expires: 2027-03-22]
       AE47095725E63125CECB2790BA97CD52B796414F
 sub   rsa4096 2020-11-06 [A] [expires: 2027-03-22]
       0E81B177263D4031E4744DA662B669D05E153901
-sub   rsa4096 2020-11-06 [S] [expires: 2024-11-05]
-      5738F39D590536BFC54CD0F8CF756396B98DDF71
 
 -----BEGIN PGP PUBLIC KEY BLOCK-----
 
@@ -214,40 +212,6 @@ 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
-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
-=II1B
+Wagr24U=
+=+x9p
 -----END PGP PUBLIC KEY BLOCK-----
-- 
2.50.1

