Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6483D5220
	for <keys@linux.kernel.org>; Tue,  3 Feb 2026 18:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142786; cv=none; b=Tn732Ie/8O7d8eHDOUWgZJr4zhwvwzp+uzorlBum8Fup63/p6bYLRbZ+qwsWf+ZGdO+9um2cMBgQYVg8UAM3HYgJ48Bw339QwkB5a7EE39c4LHhFAs9DHVXKRQwg3Gsyo6GKd2jt2XAzK8q8P7PA1Y5NHKQWO8h7fhuc3tVHSAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142786; c=relaxed/simple;
	bh=9wBBl+cu2fMsw9ezGHlayvVl9Hm8FSEkVVwvbZCBhaI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q+rsjQ/uXndeO1CkR1BecZPDyEfDstrIad+OsvGfD8HND50nq59qreF1dyP6E3aQKODM8cp/a/T23/o0cnqaQ0Q22jD/3Zxq+0APIWeODSSLpfM6Aqeg/b6oApfthwe/Q/N1hb1BCI/x292qEsg4coUQKStaxENCY4F3MqI72bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yAnc4Mj1; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yAnc4Mj1"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4805ef35864so52038155e9.0
        for <keys@linux.kernel.org>; Tue, 03 Feb 2026 10:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770142782; x=1770747582; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DZSwvOfwqpzpzjf2p3q80CfDo+MT1D3xXJWbw7vGCEg=;
        b=yAnc4Mj1BFJK3Ny4QCqeWJGum4OTecMQ2LcXwYpOGMEGfHboaTg+ekkl+T+M1vTEgl
         +ZcwZInOUByEjRIRk9esC47YQ9qA6gz0vspZq65srMpDwQs9/wE+TUsZKzfKsO3VntW/
         viWTF8YhYLA8LlxOY4nQiZV8w+meUTKsqhuyXCsHo53Y47/1WWI+VveO2iHk3LbEupUn
         je0ePBTwi9/nsPqiavsLed1mRuRvQbvt3ogRyndVnEhcR8EqOerJh9i8ge7ROVcqvuDI
         a1RxEphKFDIyiht+v8PLzFrKEqdOuAchqc0DsArduGct5H9ubH+W0l+jb4BrN2kI4z/7
         9TOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770142782; x=1770747582;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DZSwvOfwqpzpzjf2p3q80CfDo+MT1D3xXJWbw7vGCEg=;
        b=nWExeucfyNRSVE/lOJAhdid43gHS+B7rs2v5ipHgvJbMH3d7IaTbP1vivDy91pZH/G
         KZXvS9cPIERxqEPbof4wUUOtEI80aITCvYPzVF7qrAb4fIacUnCt6DltBF+xsbM2f+zP
         FxbXOScjbj6C48OJtHMb4kHmSFAOyqXQOR0BG9b97nI8k6zjwBiAzEelRyGg+vnnDpcf
         SYQ07dACN04yvBlZrGIUCTshptV7wCN+anlpWUzi34k7mCbUszVUWVETr1zxLtvgpg8y
         uED/fDYhyvlPw1jUK00rFqLBWQ680DOgo/DjNVyXfMUK2X16pcUJMia80i5VxnDlF3nR
         qgfQ==
X-Gm-Message-State: AOJu0YxJeKm9921CCwmIZtZSPm4urynxoy20YQXOStgr6bUNCgCcotfX
	J66B/z4y6+9IF5kdSqrf6/Gli10gE5ze0DYiUWwl09Oq7er1sAs7zfSMVz5XjCwtz7kPkeevLOJ
	t+a8N
X-Gm-Gg: AZuq6aI4pFJ1aHTah3UZMesJq5rG402++dJmoInK7FblBAeFhtRiGyshEhEArj1QV0q
	jd3qvPH9RUvWUk9GxBlbEIPYdQb5dF5M96q0x5Y0ESY2+S/GCE0Yp1+pZDpfiHZ2NBOCdBVm0r2
	R1xXWyQDyPnxXYnCwvEIIG3VbhWOrqw2FCxNOwV0r0ITYWCVS0/D7hZTfVeXqljPsEKvluwASTz
	MSP+WtV2PlTx0lMVAim9VvfvhwBPGao+9R9rkSbvoKuTAXJ1QzFngCWGPgbk3znIyoePUxgxFs9
	dIQy08kUoe76iUrcQHGl8CzWYPHTwnxL20SrnCx5IighvdoM4iYXYmkYcxC5AaDSkDZikdoSEDb
	hgjvMdvc2cAf3jq2hTOBUioOECHVljCw+B+fAT5KsSvnWYPvqmR1efrMM3J+wATQlM2MJiOJmqi
	X2D4ixhXpJqT5p4Kc0cCv0NPADRtRSBAU+prWRLlsfC6sMTeWGKBEkkLkqgGWWmhDbDUmzC8gIi
	+U=
X-Received: by 2002:a05:600c:3145:b0:480:25ae:9993 with SMTP id 5b1f17b1804b1-4830e987e9emr7278045e9.20.1770142781424;
        Tue, 03 Feb 2026 10:19:41 -0800 (PST)
Received: from localhost (p200300f65f20eb04d65faeeb2737200f.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:d65f:aeeb:2737:200f])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-48305129321sm77455025e9.4.2026.02.03.10.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 10:19:41 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Subject: [PATCH 2/3] Drop broken symlinks from b4 keyring
Date: Tue,  3 Feb 2026 19:19:25 +0100
Message-ID: <847b0bb54db0379723f2f2eca0b2322af4deede9.1770141846.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1770141846.git.u.kleine-koenig@baylibre.com>
References: <cover.1770141846.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=24329; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=9wBBl+cu2fMsw9ezGHlayvVl9Hm8FSEkVVwvbZCBhaI=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBpgjwvyz+oA1tolEXm2HkdEyxwZ7ewD0fb34I8S +7dLCfhLBqJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaYI8LwAKCRCPgPtYfRL+ Tp1qB/9wcbi3lNPQzRsLUcoaCGOROZDqu7jnCZ2s3lYH1vVXr2OIKUqrrlSEXvbp+q+hK0X25Bk Eet91iiDFuOJKFDiOQj9ciy2RlYzI5Ts/2NvY+g8l/KMm1rsFFiRcvnT8mOsBqozOAAaUOBrwOe +VTPc4LEjuqYjuvJvlawT/UNRQgbm78/NdfFxN18wQ2wjqYVF4SRCkVMDi9g4PRosnwjPtyNZMF Llk7kMCxY2fOVxRfWyxvi1Rz4TRzek+3xv7adI+whSq4B4wUX0Aqdr0wR+xswqPAbgWKhRcZBRQ Ap4gCeNKkwGX+cZuHTrAsb0bQg4gzNeWjB3aI7tA9uleSMkj
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

This change is created by

	find .keyring -xtype l -delete
---
 .keyring/openpgp/FreeBSD.org/bwidawsk/default               | 1 -
 .keyring/openpgp/bingham.xyz/kieran/default                 | 1 -
 .keyring/openpgp/bootlin.com/boris.brezillon/default        | 1 -
 .keyring/openpgp/brown.name/neil/default                    | 1 -
 .keyring/openpgp/bwidawsk.net/ben/default                   | 1 -
 .keyring/openpgp/codeaurora.org/galak/default               | 1 -
 .keyring/openpgp/collabora.com/boris.brezillon/default      | 1 -
 .keyring/openpgp/denx.de/lukma/default                      | 1 -
 .keyring/openpgp/free-electrons.com/boris.brezillon/default | 1 -
 .keyring/openpgp/gmail.com/b.brezillon.dev/default          | 1 -
 .keyring/openpgp/gmail.com/daeinki/default                  | 1 -
 .keyring/openpgp/gmail.com/delicious.quinoa/default         | 1 -
 .keyring/openpgp/gmail.com/eric.dumazet/default             | 1 -
 .keyring/openpgp/gmail.com/kieranbingham/default            | 1 -
 .keyring/openpgp/google.com/edumazet/default                | 1 -
 .keyring/openpgp/groveronline.com/andy/default              | 1 -
 .keyring/openpgp/iki.fi/penberg/default                     | 1 -
 .keyring/openpgp/infradead.org/willy/default                | 1 -
 .keyring/openpgp/intel.com/alexander.shishkin/default       | 1 -
 .keyring/openpgp/intel.com/ben.widawsky/default             | 1 -
 .keyring/openpgp/intel.com/hao.wu/default                   | 1 -
 .keyring/openpgp/intel.com/jani.nikula/default              | 1 -
 .keyring/openpgp/intel.com/peter.waskiewicz.jr/default      | 1 -
 .keyring/openpgp/intel.com/shiraz.saleem/default            | 1 -
 .keyring/openpgp/intel.com/yilun.xu/default                 | 1 -
 .keyring/openpgp/kbingham.co.uk/kieran/default              | 1 -
 .keyring/openpgp/kernel.crashing.org/galak/default          | 1 -
 .keyring/openpgp/kernel.org/atull/default                   | 1 -
 .keyring/openpgp/kernel.org/bbrezillon/default              | 1 -
 .keyring/openpgp/kernel.org/bwidawsk/default                | 1 -
 .keyring/openpgp/kernel.org/daeinki/default                 | 1 -
 .keyring/openpgp/kernel.org/edumazet/default                | 1 -
 .keyring/openpgp/koowaldah.org/ash/default                  | 1 -
 .keyring/openpgp/linaro.org/kumar.gala/default              | 1 -
 .keyring/openpgp/linaro.org/mathieu.poirier/default         | 1 -
 .keyring/openpgp/linux.intel.com/alexander.shishkin/default | 1 -
 .keyring/openpgp/majess.pl/l.majewski/default               | 1 -
 .keyring/openpgp/netapp.com/pj.waskiewicz/default           | 1 -
 .keyring/openpgp/netapp.com/pjw/default                     | 1 -
 .keyring/openpgp/nicira.com/pshelar/default                 | 1 -
 .keyring/openpgp/nvidia.com/swarren/default                 | 1 -
 .keyring/openpgp/opensource.altera.com/atull/default        | 1 -
 .keyring/openpgp/pobox.com/jgarzik/default                  | 1 -
 .keyring/openpgp/samsung.com/inki.dae/default               | 1 -
 .keyring/openpgp/slind.org/virtuoso/default                 | 1 -
 .keyring/openpgp/suse.com/neilb/default                     | 1 -
 .keyring/openpgp/suse.com/nfbrown/default                   | 1 -
 .keyring/openpgp/suse.de/neilb/default                      | 1 -
 .keyring/openpgp/ti.com/j-keerthy/default                   | 1 -
 .keyring/openpgp/wdc.com/chaitanya.kulkarni/default         | 1 -
 .keyring/openpgp/wil.cx/matthew/default                     | 1 -
 .keyring/openpgp/wwwdotorg.org/swarren/default              | 1 -
 .keyring/openpgp/zankel.net/chris/default                   | 1 -
 53 files changed, 53 deletions(-)
 delete mode 120000 .keyring/openpgp/FreeBSD.org/bwidawsk/default
 delete mode 120000 .keyring/openpgp/bingham.xyz/kieran/default
 delete mode 120000 .keyring/openpgp/bootlin.com/boris.brezillon/default
 delete mode 120000 .keyring/openpgp/brown.name/neil/default
 delete mode 120000 .keyring/openpgp/bwidawsk.net/ben/default
 delete mode 120000 .keyring/openpgp/codeaurora.org/galak/default
 delete mode 120000 .keyring/openpgp/collabora.com/boris.brezillon/default
 delete mode 120000 .keyring/openpgp/denx.de/lukma/default
 delete mode 120000 .keyring/openpgp/free-electrons.com/boris.brezillon/default
 delete mode 120000 .keyring/openpgp/gmail.com/b.brezillon.dev/default
 delete mode 120000 .keyring/openpgp/gmail.com/daeinki/default
 delete mode 120000 .keyring/openpgp/gmail.com/delicious.quinoa/default
 delete mode 120000 .keyring/openpgp/gmail.com/eric.dumazet/default
 delete mode 120000 .keyring/openpgp/gmail.com/kieranbingham/default
 delete mode 120000 .keyring/openpgp/google.com/edumazet/default
 delete mode 120000 .keyring/openpgp/groveronline.com/andy/default
 delete mode 120000 .keyring/openpgp/iki.fi/penberg/default
 delete mode 120000 .keyring/openpgp/infradead.org/willy/default
 delete mode 120000 .keyring/openpgp/intel.com/alexander.shishkin/default
 delete mode 120000 .keyring/openpgp/intel.com/ben.widawsky/default
 delete mode 120000 .keyring/openpgp/intel.com/hao.wu/default
 delete mode 120000 .keyring/openpgp/intel.com/jani.nikula/default
 delete mode 120000 .keyring/openpgp/intel.com/peter.waskiewicz.jr/default
 delete mode 120000 .keyring/openpgp/intel.com/shiraz.saleem/default
 delete mode 120000 .keyring/openpgp/intel.com/yilun.xu/default
 delete mode 120000 .keyring/openpgp/kbingham.co.uk/kieran/default
 delete mode 120000 .keyring/openpgp/kernel.crashing.org/galak/default
 delete mode 120000 .keyring/openpgp/kernel.org/atull/default
 delete mode 120000 .keyring/openpgp/kernel.org/bbrezillon/default
 delete mode 120000 .keyring/openpgp/kernel.org/bwidawsk/default
 delete mode 120000 .keyring/openpgp/kernel.org/daeinki/default
 delete mode 120000 .keyring/openpgp/kernel.org/edumazet/default
 delete mode 120000 .keyring/openpgp/koowaldah.org/ash/default
 delete mode 120000 .keyring/openpgp/linaro.org/kumar.gala/default
 delete mode 120000 .keyring/openpgp/linaro.org/mathieu.poirier/default
 delete mode 120000 .keyring/openpgp/linux.intel.com/alexander.shishkin/default
 delete mode 120000 .keyring/openpgp/majess.pl/l.majewski/default
 delete mode 120000 .keyring/openpgp/netapp.com/pj.waskiewicz/default
 delete mode 120000 .keyring/openpgp/netapp.com/pjw/default
 delete mode 120000 .keyring/openpgp/nicira.com/pshelar/default
 delete mode 120000 .keyring/openpgp/nvidia.com/swarren/default
 delete mode 120000 .keyring/openpgp/opensource.altera.com/atull/default
 delete mode 120000 .keyring/openpgp/pobox.com/jgarzik/default
 delete mode 120000 .keyring/openpgp/samsung.com/inki.dae/default
 delete mode 120000 .keyring/openpgp/slind.org/virtuoso/default
 delete mode 120000 .keyring/openpgp/suse.com/neilb/default
 delete mode 120000 .keyring/openpgp/suse.com/nfbrown/default
 delete mode 120000 .keyring/openpgp/suse.de/neilb/default
 delete mode 120000 .keyring/openpgp/ti.com/j-keerthy/default
 delete mode 120000 .keyring/openpgp/wdc.com/chaitanya.kulkarni/default
 delete mode 120000 .keyring/openpgp/wil.cx/matthew/default
 delete mode 120000 .keyring/openpgp/wwwdotorg.org/swarren/default
 delete mode 120000 .keyring/openpgp/zankel.net/chris/default

diff --git a/.keyring/openpgp/FreeBSD.org/bwidawsk/default b/.keyring/openpgp/FreeBSD.org/bwidawsk/default
deleted file mode 120000
index 1f35b36d8502..000000000000
--- a/.keyring/openpgp/FreeBSD.org/bwidawsk/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/BF674C8889123D29.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/bingham.xyz/kieran/default b/.keyring/openpgp/bingham.xyz/kieran/default
deleted file mode 120000
index 7a5ce05fa049..000000000000
--- a/.keyring/openpgp/bingham.xyz/kieran/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/23863DC3831DB2B1.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/bootlin.com/boris.brezillon/default b/.keyring/openpgp/bootlin.com/boris.brezillon/default
deleted file mode 120000
index 753e0b21cf6c..000000000000
--- a/.keyring/openpgp/bootlin.com/boris.brezillon/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/65ED36017E08B700.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/brown.name/neil/default b/.keyring/openpgp/brown.name/neil/default
deleted file mode 120000
index 8d8dd9ebb02d..000000000000
--- a/.keyring/openpgp/brown.name/neil/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/39EC9EDD566281B9.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/bwidawsk.net/ben/default b/.keyring/openpgp/bwidawsk.net/ben/default
deleted file mode 120000
index 1f35b36d8502..000000000000
--- a/.keyring/openpgp/bwidawsk.net/ben/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/BF674C8889123D29.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/codeaurora.org/galak/default b/.keyring/openpgp/codeaurora.org/galak/default
deleted file mode 120000
index 6da3a2e89f80..000000000000
--- a/.keyring/openpgp/codeaurora.org/galak/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/18AD36B54CD1D988.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/collabora.com/boris.brezillon/default b/.keyring/openpgp/collabora.com/boris.brezillon/default
deleted file mode 120000
index 753e0b21cf6c..000000000000
--- a/.keyring/openpgp/collabora.com/boris.brezillon/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/65ED36017E08B700.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/denx.de/lukma/default b/.keyring/openpgp/denx.de/lukma/default
deleted file mode 120000
index fb2a8f5f4036..000000000000
--- a/.keyring/openpgp/denx.de/lukma/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/4EF87FB4D43F6D9B.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/free-electrons.com/boris.brezillon/default b/.keyring/openpgp/free-electrons.com/boris.brezillon/default
deleted file mode 120000
index 753e0b21cf6c..000000000000
--- a/.keyring/openpgp/free-electrons.com/boris.brezillon/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/65ED36017E08B700.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/gmail.com/b.brezillon.dev/default b/.keyring/openpgp/gmail.com/b.brezillon.dev/default
deleted file mode 120000
index 753e0b21cf6c..000000000000
--- a/.keyring/openpgp/gmail.com/b.brezillon.dev/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/65ED36017E08B700.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/gmail.com/daeinki/default b/.keyring/openpgp/gmail.com/daeinki/default
deleted file mode 120000
index c03182631b4f..000000000000
--- a/.keyring/openpgp/gmail.com/daeinki/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/573834890C4312B8.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/gmail.com/delicious.quinoa/default b/.keyring/openpgp/gmail.com/delicious.quinoa/default
deleted file mode 120000
index 465aed0f3afc..000000000000
--- a/.keyring/openpgp/gmail.com/delicious.quinoa/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/D4CC2F0BAEDDE4A2.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/gmail.com/eric.dumazet/default b/.keyring/openpgp/gmail.com/eric.dumazet/default
deleted file mode 120000
index 371129f73415..000000000000
--- a/.keyring/openpgp/gmail.com/eric.dumazet/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/70AA62F3B95C551B.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/gmail.com/kieranbingham/default b/.keyring/openpgp/gmail.com/kieranbingham/default
deleted file mode 120000
index 7a5ce05fa049..000000000000
--- a/.keyring/openpgp/gmail.com/kieranbingham/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/23863DC3831DB2B1.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/google.com/edumazet/default b/.keyring/openpgp/google.com/edumazet/default
deleted file mode 120000
index 371129f73415..000000000000
--- a/.keyring/openpgp/google.com/edumazet/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/70AA62F3B95C551B.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/groveronline.com/andy/default b/.keyring/openpgp/groveronline.com/andy/default
deleted file mode 120000
index 493d78ec436d..000000000000
--- a/.keyring/openpgp/groveronline.com/andy/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/A41EC7315319EDAA.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/iki.fi/penberg/default b/.keyring/openpgp/iki.fi/penberg/default
deleted file mode 120000
index d5cf010a964b..000000000000
--- a/.keyring/openpgp/iki.fi/penberg/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/B7AB15ED42BA9A44.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/infradead.org/willy/default b/.keyring/openpgp/infradead.org/willy/default
deleted file mode 120000
index 3a2abfba798a..000000000000
--- a/.keyring/openpgp/infradead.org/willy/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/5EC42E41545C1F5E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/intel.com/alexander.shishkin/default b/.keyring/openpgp/intel.com/alexander.shishkin/default
deleted file mode 120000
index 7574606c6c00..000000000000
--- a/.keyring/openpgp/intel.com/alexander.shishkin/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/EBC5F624630557FF.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/intel.com/ben.widawsky/default b/.keyring/openpgp/intel.com/ben.widawsky/default
deleted file mode 120000
index 1f35b36d8502..000000000000
--- a/.keyring/openpgp/intel.com/ben.widawsky/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/BF674C8889123D29.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/intel.com/hao.wu/default b/.keyring/openpgp/intel.com/hao.wu/default
deleted file mode 120000
index 16e2a2ba3461..000000000000
--- a/.keyring/openpgp/intel.com/hao.wu/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/94F94DA47B5C91AA.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/intel.com/jani.nikula/default b/.keyring/openpgp/intel.com/jani.nikula/default
deleted file mode 120000
index 45f5d2dc15f4..000000000000
--- a/.keyring/openpgp/intel.com/jani.nikula/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/D398079D26ABEE6F.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/intel.com/peter.waskiewicz.jr/default b/.keyring/openpgp/intel.com/peter.waskiewicz.jr/default
deleted file mode 120000
index ad6d387b762d..000000000000
--- a/.keyring/openpgp/intel.com/peter.waskiewicz.jr/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/FF57F02EF109B01E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/intel.com/shiraz.saleem/default b/.keyring/openpgp/intel.com/shiraz.saleem/default
deleted file mode 120000
index 54881e71741e..000000000000
--- a/.keyring/openpgp/intel.com/shiraz.saleem/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/31CFB049778EB2F2.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/intel.com/yilun.xu/default b/.keyring/openpgp/intel.com/yilun.xu/default
deleted file mode 120000
index ee119d3f0216..000000000000
--- a/.keyring/openpgp/intel.com/yilun.xu/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/E2C8D72186AC3949.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/kbingham.co.uk/kieran/default b/.keyring/openpgp/kbingham.co.uk/kieran/default
deleted file mode 120000
index 7a5ce05fa049..000000000000
--- a/.keyring/openpgp/kbingham.co.uk/kieran/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/23863DC3831DB2B1.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/kernel.crashing.org/galak/default b/.keyring/openpgp/kernel.crashing.org/galak/default
deleted file mode 120000
index 6da3a2e89f80..000000000000
--- a/.keyring/openpgp/kernel.crashing.org/galak/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/18AD36B54CD1D988.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/kernel.org/atull/default b/.keyring/openpgp/kernel.org/atull/default
deleted file mode 120000
index 465aed0f3afc..000000000000
--- a/.keyring/openpgp/kernel.org/atull/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/D4CC2F0BAEDDE4A2.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/kernel.org/bbrezillon/default b/.keyring/openpgp/kernel.org/bbrezillon/default
deleted file mode 120000
index 753e0b21cf6c..000000000000
--- a/.keyring/openpgp/kernel.org/bbrezillon/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/65ED36017E08B700.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/kernel.org/bwidawsk/default b/.keyring/openpgp/kernel.org/bwidawsk/default
deleted file mode 120000
index 1f35b36d8502..000000000000
--- a/.keyring/openpgp/kernel.org/bwidawsk/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/BF674C8889123D29.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/kernel.org/daeinki/default b/.keyring/openpgp/kernel.org/daeinki/default
deleted file mode 120000
index c03182631b4f..000000000000
--- a/.keyring/openpgp/kernel.org/daeinki/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/573834890C4312B8.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/kernel.org/edumazet/default b/.keyring/openpgp/kernel.org/edumazet/default
deleted file mode 120000
index 371129f73415..000000000000
--- a/.keyring/openpgp/kernel.org/edumazet/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/70AA62F3B95C551B.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/koowaldah.org/ash/default b/.keyring/openpgp/koowaldah.org/ash/default
deleted file mode 120000
index 7574606c6c00..000000000000
--- a/.keyring/openpgp/koowaldah.org/ash/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/EBC5F624630557FF.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linaro.org/kumar.gala/default b/.keyring/openpgp/linaro.org/kumar.gala/default
deleted file mode 120000
index 6da3a2e89f80..000000000000
--- a/.keyring/openpgp/linaro.org/kumar.gala/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/18AD36B54CD1D988.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linaro.org/mathieu.poirier/default b/.keyring/openpgp/linaro.org/mathieu.poirier/default
deleted file mode 120000
index 66ecf68f2559..000000000000
--- a/.keyring/openpgp/linaro.org/mathieu.poirier/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/5378A31CC0EC0959.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linux.intel.com/alexander.shishkin/default b/.keyring/openpgp/linux.intel.com/alexander.shishkin/default
deleted file mode 120000
index 7574606c6c00..000000000000
--- a/.keyring/openpgp/linux.intel.com/alexander.shishkin/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/EBC5F624630557FF.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/majess.pl/l.majewski/default b/.keyring/openpgp/majess.pl/l.majewski/default
deleted file mode 120000
index fb2a8f5f4036..000000000000
--- a/.keyring/openpgp/majess.pl/l.majewski/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/4EF87FB4D43F6D9B.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/netapp.com/pj.waskiewicz/default b/.keyring/openpgp/netapp.com/pj.waskiewicz/default
deleted file mode 120000
index ad6d387b762d..000000000000
--- a/.keyring/openpgp/netapp.com/pj.waskiewicz/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/FF57F02EF109B01E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/netapp.com/pjw/default b/.keyring/openpgp/netapp.com/pjw/default
deleted file mode 120000
index ad6d387b762d..000000000000
--- a/.keyring/openpgp/netapp.com/pjw/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/FF57F02EF109B01E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/nicira.com/pshelar/default b/.keyring/openpgp/nicira.com/pshelar/default
deleted file mode 120000
index 01af4dd8018c..000000000000
--- a/.keyring/openpgp/nicira.com/pshelar/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/C07AE44466FB6D66.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/nvidia.com/swarren/default b/.keyring/openpgp/nvidia.com/swarren/default
deleted file mode 120000
index 7242eed452ec..000000000000
--- a/.keyring/openpgp/nvidia.com/swarren/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/CCEB6A4E6D6F2731.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/opensource.altera.com/atull/default b/.keyring/openpgp/opensource.altera.com/atull/default
deleted file mode 120000
index 465aed0f3afc..000000000000
--- a/.keyring/openpgp/opensource.altera.com/atull/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/D4CC2F0BAEDDE4A2.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/pobox.com/jgarzik/default b/.keyring/openpgp/pobox.com/jgarzik/default
deleted file mode 120000
index 24c35e06bb65..000000000000
--- a/.keyring/openpgp/pobox.com/jgarzik/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/25B3083201782B2F.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/samsung.com/inki.dae/default b/.keyring/openpgp/samsung.com/inki.dae/default
deleted file mode 120000
index c03182631b4f..000000000000
--- a/.keyring/openpgp/samsung.com/inki.dae/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/573834890C4312B8.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/slind.org/virtuoso/default b/.keyring/openpgp/slind.org/virtuoso/default
deleted file mode 120000
index 7574606c6c00..000000000000
--- a/.keyring/openpgp/slind.org/virtuoso/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/EBC5F624630557FF.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/suse.com/neilb/default b/.keyring/openpgp/suse.com/neilb/default
deleted file mode 120000
index 8d8dd9ebb02d..000000000000
--- a/.keyring/openpgp/suse.com/neilb/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/39EC9EDD566281B9.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/suse.com/nfbrown/default b/.keyring/openpgp/suse.com/nfbrown/default
deleted file mode 120000
index 8d8dd9ebb02d..000000000000
--- a/.keyring/openpgp/suse.com/nfbrown/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/39EC9EDD566281B9.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/suse.de/neilb/default b/.keyring/openpgp/suse.de/neilb/default
deleted file mode 120000
index 8d8dd9ebb02d..000000000000
--- a/.keyring/openpgp/suse.de/neilb/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/39EC9EDD566281B9.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/ti.com/j-keerthy/default b/.keyring/openpgp/ti.com/j-keerthy/default
deleted file mode 120000
index c3c0323ea407..000000000000
--- a/.keyring/openpgp/ti.com/j-keerthy/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/F785DEE71A0A5DC5.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/wdc.com/chaitanya.kulkarni/default b/.keyring/openpgp/wdc.com/chaitanya.kulkarni/default
deleted file mode 120000
index 669288fe580f..000000000000
--- a/.keyring/openpgp/wdc.com/chaitanya.kulkarni/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/C7EBFEB68865BA65.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/wil.cx/matthew/default b/.keyring/openpgp/wil.cx/matthew/default
deleted file mode 120000
index 3a2abfba798a..000000000000
--- a/.keyring/openpgp/wil.cx/matthew/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/5EC42E41545C1F5E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/wwwdotorg.org/swarren/default b/.keyring/openpgp/wwwdotorg.org/swarren/default
deleted file mode 120000
index d6c9cd4a53fa..000000000000
--- a/.keyring/openpgp/wwwdotorg.org/swarren/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/9B8DA7092654219C.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/zankel.net/chris/default b/.keyring/openpgp/zankel.net/chris/default
deleted file mode 120000
index 2a07da129586..000000000000
--- a/.keyring/openpgp/zankel.net/chris/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/8F6FA87DE6155DAC.asc
\ No newline at end of file
-- 
2.47.3

