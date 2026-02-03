Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9BE396D19
	for <keys@linux.kernel.org>; Tue,  3 Feb 2026 18:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142784; cv=none; b=sokO+YePnuY1DHUKUT3xDmhh7lL3ZoArqvv0g2TyW1OqytdS1xyhT/WbyDlspy51hGEtQvidF3h4WfpXWuGbOnV6FSFUzRH5ig0M62zIDSGMkHW0pHE4ouURFDdfOegu5aBHSmMMTPPr+3krqWrjRihr37xiCFffkzz5+3t0q4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142784; c=relaxed/simple;
	bh=VpxZcKGfmT1pxkqfnWQtrY6UQoB6KD2jvVNXn5Sg3Xo=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Yc5yNxG584EnErHotRiw2wOtxslPwek4DYTHMiZ5KQGuFgpYTt9uJlzHIpERrLcKZHt3HSl4Y+DvHhmwiCt7PDGbPF8L0PHr3NHqLrAwFUFqpadLX0NafK8/JQAojWpNp8rRIt+W4ts9x4lM9ETmDAexGBHkNW1f7mmOKC5zP44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=q47c0jqD; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="q47c0jqD"
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4359a316d89so4507048f8f.0
        for <keys@linux.kernel.org>; Tue, 03 Feb 2026 10:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770142779; x=1770747579; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=8LR7QXgE9DFpYvELy8D8aA96bkuOYhg3yJMFT+P4ibc=;
        b=q47c0jqDRn2VN07ZgKhETmNjTUn++HRahIi7MG6Y5+QQFVYLa8ToIsmdSGi7G2kJ+e
         Qt9wWUCQzobSa06lzNmVbgXiTO4JgdH97y1X8+ufkR88GMM1Yx2ZwhLjLpC/RiqH7/xw
         eDTMTdcWfq5kurze2WF1nQNYOKR4bPPS1zZoeLlhEG01ahCScuNlRlS8zHcFi2pqPgwP
         fwLRonmd+4+P74FUkW/NsDZjf9zp4H4gOobO32+CcNrGEuw9GEQ3XnJDe6ugSM8uxakl
         /IyccZNhv/BPP0WYDr3KZYea0SaPxs/W+KUK9R+z2Cf0Z3zU6PDNQPTceeEOzjTGjwlA
         j7WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770142779; x=1770747579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8LR7QXgE9DFpYvELy8D8aA96bkuOYhg3yJMFT+P4ibc=;
        b=a+RlmUbfWmEDOORMNURjNqWVJf6uAKPaqNUkG4MYlkAXXdgQ2WU5zNzodmBquUdF6X
         WTbgJvXLyBMMeK8TZK5o2AttUNi8YwBgTOJYLQLO55M78Ej8QiCl+p4uFc3CEQreIrca
         M90KUJMVT5WJI88DE872FgDO2PZkR848UZmcMQgzbgAxKsOmw5i5Eo3Aed0IKni9jyix
         NKhAqreDThWkIAiWbjY7KpN66ivQU2cSJBRciOEOllQhhr7Rmt8IHIiCZ4Z5lVTWmFwX
         ZpEvRxsTnYUHNMW0bfQq+CmlNbHSHvpAU0B8QTtu7CiJ9TuWcXpQ922qfwfRtLtGnRxg
         r4/w==
X-Gm-Message-State: AOJu0YzBK2SM2e9pJjKa+OPO8M0mv6k2w9WsAn3sy60anqROOKzxdmB9
	1P4mwH8QDHqtNhef6DG950SK4SJDZUej1aB+4UTwXJvJNw259fqNZ8C5hKU1A7CoHw1YbVS2EAH
	NEMLh
X-Gm-Gg: AZuq6aLoVic6ELCX7LzMQFeO9m2qkTpCSHVXI28OWRSUg6MYJP6hk9J/OlCeBpaTRsY
	UC0DhFuV+WYxkGjLF8Pp18DzY8wym0A8boq9aORhwUTwKKtqeNRtfUOkfRQ+w97ipuasYS8C8BZ
	9VMR17lGzGuIsAZwRNy1pChpDBcywomViB8I3QMobJQIHjYeEXa2gZB3id86SlLHAqO7/aX/BDo
	Mi9oTuFf18cqVg4XY27iLwXkCwbipT3+kG+2TvQiY7F0nDh8GJEVsOiaHlvCW3fkA5UFiFOoT8k
	i/id5LOLITDi8NGkCKqFs2p4Oh4j3VjQmTRqJ3LOP1p6WPtYaQHP6ibBJ57u7fdv+LfXpaXczjN
	udJFiWwTRVK3AZjUadU2gVrWmIjuu22Wc2hUuLpH/S8NQISeRxgojiMHgpbwvAvDxx6UjcTgmTe
	9/j88T4BDLgATt5zKb+J3K1lDIK5sBLIHh54sIj7XNTsy18wIF+8Bsn0Qpx2dQEWAG2uitjJ/bm
	R0=
X-Received: by 2002:a05:6000:178f:b0:431:344:5a2d with SMTP id ffacd0b85a97d-43618055109mr350249f8f.41.1770142779129;
        Tue, 03 Feb 2026 10:19:39 -0800 (PST)
Received: from localhost (p200300f65f20eb04d65faeeb2737200f.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:d65f:aeeb:2737:200f])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-43617e3a3a9sm477418f8f.18.2026.02.03.10.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 10:19:38 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Subject: [PATCH 0/3] b4 keyring maintenance
Date: Tue,  3 Feb 2026 19:19:23 +0100
Message-ID: <cover.1770141846.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=16336; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=VpxZcKGfmT1pxkqfnWQtrY6UQoB6KD2jvVNXn5Sg3Xo=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBpgjwq6JAXDdtHR92YNyxyyEtXCJaHiMeRfrTYn 0A+DbhiLB2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaYI8KgAKCRCPgPtYfRL+ Th6FB/4gR3JcwIWtOFp0pUQX74c15Zt60IiOUsvPPb9V6m9mxxkavVv5AM+c7+S0rtcIVJSlRGL OzG49xEB0lIUM/KOZq6r0bkmMxG8y2LVm69gQCp0tW9yH20hRPToyCDwGyFmy960aizij+I2OK4 9a+Ud5zJgsHVUE2KJLv3eaCtOz8xb17ktAl6LiN5lAeCV1UqqXEYKNNFUfW4nxUB9pSX0aaKK8t f03rlaWcLpEDv5M1/nUUcDb+XFHOT0w7VzkCtshpLduFqjScJ1iHpw2hOkMosxHe+LcQaGfaIoY Uc+O2FUVplhkOTS9eVZrvbtLNSvxrQmRjmFv3iN1n6HUMEpQ
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

last week I noticed that there are several symlinks in .keyring (i.e.
the directory that can be used with b4) that are not up to date. This
patch set cleans up a part of the issues.

patch #1 just adds --gen-b4-keyring to the example script as this is
what Konstantin seems to use.
patch #2 removes all data for removed keys. patch #3 removes all data
for revoked UIDs.

What is still open and ugly:

 - The scripts don't cope for these cases, so unless some manual care is
   applied, the keyring will become outdated again.
 - There are quite some email addresses that are part of two keys
   (`iconv -f latin1 keys/*.asc | sed -nr 's/^uid[^<]*<([^>]*)>/\1/p' | sort | uniq -d`
   produces some false positives)
   For these the cert that is linked to is not chosen deterministically.

Uwe Kleine-König (3):
  korg-update-pgpkeys: Pass --gen-b4-keyring to wotmate's
    export-keyring.py
  Drop broken symlinks from b4 keyring
  Drop revoked UIDs from b4 keyring

 .keyring/openpgp/FreeBSD.org/bwidawsk/default               | 1 -
 .keyring/openpgp/alumni.ku.dk/dbk763/default                | 1 -
 .keyring/openpgp/amd.com/oded.gabbay/default                | 1 -
 .keyring/openpgp/archlinuxcn.org/fixme/default              | 1 -
 .keyring/openpgp/arm.com/ard.biesheuvel/default             | 1 -
 .keyring/openpgp/baylibre.com/mkorpershoek/default          | 1 -
 .keyring/openpgp/baylibre.com/narmstrong/default            | 1 -
 .keyring/openpgp/bingham.xyz/kieran/default                 | 1 -
 .keyring/openpgp/bootlin.com/boris.brezillon/default        | 1 -
 .keyring/openpgp/brown.name/neil/default                    | 1 -
 .keyring/openpgp/bwidawsk.net/ben/default                   | 1 -
 .keyring/openpgp/canonical.com/joseph.salisbury/default     | 1 -
 .keyring/openpgp/canonical.com/krzysztof.kozlowski/default  | 1 -
 .keyring/openpgp/cerno.tech/maxime/default                  | 1 -
 .keyring/openpgp/chromium.org/acourbot/default              | 1 -
 .keyring/openpgp/codeaurora.org/galak/default               | 1 -
 .keyring/openpgp/codeaurora.org/kvalo/default               | 1 -
 .keyring/openpgp/collabora.com/boris.brezillon/default      | 1 -
 .keyring/openpgp/collabora.com/krisman/default              | 1 -
 .keyring/openpgp/deeprootsystems.com/khilman/default        | 1 -
 .keyring/openpgp/dell.com/mario.limonciello/default         | 1 -
 .keyring/openpgp/denx.de/lukma/default                      | 1 -
 .keyring/openpgp/free-electrons.com/boris.brezillon/default | 1 -
 .keyring/openpgp/gmail.com/b.brezillon.dev/default          | 1 -
 .keyring/openpgp/gmail.com/daeinki/default                  | 1 -
 .keyring/openpgp/gmail.com/dagmcr/default                   | 1 -
 .keyring/openpgp/gmail.com/delicious.quinoa/default         | 1 -
 .keyring/openpgp/gmail.com/eric.dumazet/default             | 1 -
 .keyring/openpgp/gmail.com/kieranbingham/default            | 1 -
 .keyring/openpgp/gmx.de-mail.de/oleksij.rempel/default      | 1 -
 .keyring/openpgp/google.com/acourbot/default                | 1 -
 .keyring/openpgp/google.com/edumazet/default                | 1 -
 .keyring/openpgp/google.com/msturner/default                | 1 -
 .keyring/openpgp/google.com/palmerdabbelt/default           | 1 -
 .keyring/openpgp/groveronline.com/andy/default              | 1 -
 .keyring/openpgp/iki.fi/penberg/default                     | 1 -
 .keyring/openpgp/infradead.org/willy/default                | 1 -
 .keyring/openpgp/intel.com/alexander.shishkin/default       | 1 -
 .keyring/openpgp/intel.com/ben.widawsky/default             | 1 -
 .keyring/openpgp/intel.com/hao.wu/default                   | 1 -
 .keyring/openpgp/intel.com/jani.nikula/default              | 1 -
 .keyring/openpgp/intel.com/jesse.brandeburg/default         | 1 -
 .keyring/openpgp/intel.com/peter.waskiewicz.jr/default      | 1 -
 .keyring/openpgp/intel.com/shiraz.saleem/default            | 1 -
 .keyring/openpgp/intel.com/yilun.xu/default                 | 1 -
 .keyring/openpgp/ishicorp.com/wbg/default                   | 1 -
 .keyring/openpgp/jabber.de/olerem/default                   | 1 -
 .keyring/openpgp/kbingham.co.uk/kieran/default              | 1 -
 .keyring/openpgp/kernel.crashing.org/galak/default          | 1 -
 .keyring/openpgp/kernel.org/atull/default                   | 1 -
 .keyring/openpgp/kernel.org/bbrezillon/default              | 1 -
 .keyring/openpgp/kernel.org/bwidawsk/default                | 1 -
 .keyring/openpgp/kernel.org/daeinki/default                 | 1 -
 .keyring/openpgp/kernel.org/edumazet/default                | 1 -
 .keyring/openpgp/koowaldah.org/ash/default                  | 1 -
 .keyring/openpgp/linaro.org/ard.biesheuvel/default          | 1 -
 .keyring/openpgp/linaro.org/kumar.gala/default              | 1 -
 .keyring/openpgp/linaro.org/mathieu.poirier/default         | 1 -
 .keyring/openpgp/linaro.org/nico/default                    | 1 -
 .keyring/openpgp/linaro.org/nicolas.pitre/default           | 1 -
 .keyring/openpgp/linux.ibm.com/rppt/default                 | 1 -
 .keyring/openpgp/linux.intel.com/alexander.shishkin/default | 1 -
 .keyring/openpgp/linux.intel.com/jarkko.sakkinen/default    | 1 -
 .keyring/openpgp/linux.intel.com/mathew.j.martineau/default | 1 -
 .keyring/openpgp/linux.vnet.ibm.com/boqun.feng/default      | 1 -
 .keyring/openpgp/majess.pl/l.majewski/default               | 1 -
 .keyring/openpgp/netapp.com/Trond.Myklebust/default         | 1 -
 .keyring/openpgp/netapp.com/pj.waskiewicz/default           | 1 -
 .keyring/openpgp/netapp.com/pjw/default                     | 1 -
 .keyring/openpgp/nicira.com/pshelar/default                 | 1 -
 .keyring/openpgp/nvidia.com/swarren/default                 | 1 -
 .keyring/openpgp/nxp.com/abel.vesa/default                  | 1 -
 .keyring/openpgp/opensource.altera.com/atull/default        | 1 -
 .keyring/openpgp/parity.io/jarkko/default                   | 1 -
 .keyring/openpgp/pengutronix.de/u.kleine-koenig/default     | 1 -
 .keyring/openpgp/pobox.com/jgarzik/default                  | 1 -
 .keyring/openpgp/primarydata.com/trond.myklebust/default    | 1 -
 .keyring/openpgp/profian.com/jarkko/default                 | 1 -
 .keyring/openpgp/profusion.mobi/lucas.demarchi/default      | 1 -
 .keyring/openpgp/qtec.com/ricardo/default                   | 1 -
 .keyring/openpgp/redhat.com/brouer/default                  | 1 -
 .keyring/openpgp/redhat.com/hsiangkao/default               | 1 -
 .keyring/openpgp/redhat.com/jbrouer/default                 | 1 -
 .keyring/openpgp/redhat.com/krzysztof.wilczynski/default    | 1 -
 .keyring/openpgp/redhat.com/kwilczyn/default                | 1 -
 .keyring/openpgp/redhat.com/kwilczynski/default             | 1 -
 .keyring/openpgp/rivosinc.com/palmer/default                | 1 -
 .keyring/openpgp/samsung.com/inki.dae/default               | 1 -
 .keyring/openpgp/slind.org/virtuoso/default                 | 1 -
 .keyring/openpgp/somainline.org/konrad.dybcio/default       | 1 -
 .keyring/openpgp/suse.com/jthumshirn/default                | 1 -
 .keyring/openpgp/suse.com/neilb/default                     | 1 -
 .keyring/openpgp/suse.com/nfbrown/default                   | 1 -
 .keyring/openpgp/suse.com/nsaenzjulienne/default            | 1 -
 .keyring/openpgp/suse.de/jthumshirn/default                 | 1 -
 .keyring/openpgp/suse.de/neilb/default                      | 1 -
 .keyring/openpgp/suse.de/nsaenzjulienne/default             | 1 -
 .keyring/openpgp/synopsys.com/vgupta/default                | 1 -
 .keyring/openpgp/synopsys.com/vineet.gupta1/default         | 1 -
 .keyring/openpgp/tessares.net/matthieu.baerts/default       | 1 -
 .keyring/openpgp/ti.com/j-keerthy/default                   | 1 -
 .keyring/openpgp/ti.com/kishon/default                      | 1 -
 .keyring/openpgp/ti.com/p.yadav/default                     | 1 -
 .keyring/openpgp/tuni.fi/jarkko.sakkinen/default            | 1 -
 .keyring/openpgp/ubuntu.com/joseph.salisbury/default        | 1 -
 .keyring/openpgp/ugcs.caltech.edu/ido/default               | 1 -
 .keyring/openpgp/vmware.com/dvhart/default                  | 1 -
 .keyring/openpgp/wdc.com/chaitanya.kulkarni/default         | 1 -
 .keyring/openpgp/wil.cx/matthew/default                     | 1 -
 .keyring/openpgp/wwwdotorg.org/swarren/default              | 1 -
 .keyring/openpgp/zankel.net/chris/default                   | 1 -
 scripts/korg-update-pgpkeys                                 | 2 +-
 112 files changed, 1 insertion(+), 112 deletions(-)
 delete mode 120000 .keyring/openpgp/FreeBSD.org/bwidawsk/default
 delete mode 120000 .keyring/openpgp/alumni.ku.dk/dbk763/default
 delete mode 120000 .keyring/openpgp/amd.com/oded.gabbay/default
 delete mode 120000 .keyring/openpgp/archlinuxcn.org/fixme/default
 delete mode 120000 .keyring/openpgp/arm.com/ard.biesheuvel/default
 delete mode 120000 .keyring/openpgp/baylibre.com/mkorpershoek/default
 delete mode 120000 .keyring/openpgp/baylibre.com/narmstrong/default
 delete mode 120000 .keyring/openpgp/bingham.xyz/kieran/default
 delete mode 120000 .keyring/openpgp/bootlin.com/boris.brezillon/default
 delete mode 120000 .keyring/openpgp/brown.name/neil/default
 delete mode 120000 .keyring/openpgp/bwidawsk.net/ben/default
 delete mode 120000 .keyring/openpgp/canonical.com/joseph.salisbury/default
 delete mode 120000 .keyring/openpgp/canonical.com/krzysztof.kozlowski/default
 delete mode 120000 .keyring/openpgp/cerno.tech/maxime/default
 delete mode 120000 .keyring/openpgp/chromium.org/acourbot/default
 delete mode 120000 .keyring/openpgp/codeaurora.org/galak/default
 delete mode 120000 .keyring/openpgp/codeaurora.org/kvalo/default
 delete mode 120000 .keyring/openpgp/collabora.com/boris.brezillon/default
 delete mode 120000 .keyring/openpgp/collabora.com/krisman/default
 delete mode 120000 .keyring/openpgp/deeprootsystems.com/khilman/default
 delete mode 120000 .keyring/openpgp/dell.com/mario.limonciello/default
 delete mode 120000 .keyring/openpgp/denx.de/lukma/default
 delete mode 120000 .keyring/openpgp/free-electrons.com/boris.brezillon/default
 delete mode 120000 .keyring/openpgp/gmail.com/b.brezillon.dev/default
 delete mode 120000 .keyring/openpgp/gmail.com/daeinki/default
 delete mode 120000 .keyring/openpgp/gmail.com/dagmcr/default
 delete mode 120000 .keyring/openpgp/gmail.com/delicious.quinoa/default
 delete mode 120000 .keyring/openpgp/gmail.com/eric.dumazet/default
 delete mode 120000 .keyring/openpgp/gmail.com/kieranbingham/default
 delete mode 120000 .keyring/openpgp/gmx.de-mail.de/oleksij.rempel/default
 delete mode 120000 .keyring/openpgp/google.com/acourbot/default
 delete mode 120000 .keyring/openpgp/google.com/edumazet/default
 delete mode 120000 .keyring/openpgp/google.com/msturner/default
 delete mode 120000 .keyring/openpgp/google.com/palmerdabbelt/default
 delete mode 120000 .keyring/openpgp/groveronline.com/andy/default
 delete mode 120000 .keyring/openpgp/iki.fi/penberg/default
 delete mode 120000 .keyring/openpgp/infradead.org/willy/default
 delete mode 120000 .keyring/openpgp/intel.com/alexander.shishkin/default
 delete mode 120000 .keyring/openpgp/intel.com/ben.widawsky/default
 delete mode 120000 .keyring/openpgp/intel.com/hao.wu/default
 delete mode 120000 .keyring/openpgp/intel.com/jani.nikula/default
 delete mode 120000 .keyring/openpgp/intel.com/jesse.brandeburg/default
 delete mode 120000 .keyring/openpgp/intel.com/peter.waskiewicz.jr/default
 delete mode 120000 .keyring/openpgp/intel.com/shiraz.saleem/default
 delete mode 120000 .keyring/openpgp/intel.com/yilun.xu/default
 delete mode 120000 .keyring/openpgp/ishicorp.com/wbg/default
 delete mode 120000 .keyring/openpgp/jabber.de/olerem/default
 delete mode 120000 .keyring/openpgp/kbingham.co.uk/kieran/default
 delete mode 120000 .keyring/openpgp/kernel.crashing.org/galak/default
 delete mode 120000 .keyring/openpgp/kernel.org/atull/default
 delete mode 120000 .keyring/openpgp/kernel.org/bbrezillon/default
 delete mode 120000 .keyring/openpgp/kernel.org/bwidawsk/default
 delete mode 120000 .keyring/openpgp/kernel.org/daeinki/default
 delete mode 120000 .keyring/openpgp/kernel.org/edumazet/default
 delete mode 120000 .keyring/openpgp/koowaldah.org/ash/default
 delete mode 120000 .keyring/openpgp/linaro.org/ard.biesheuvel/default
 delete mode 120000 .keyring/openpgp/linaro.org/kumar.gala/default
 delete mode 120000 .keyring/openpgp/linaro.org/mathieu.poirier/default
 delete mode 120000 .keyring/openpgp/linaro.org/nico/default
 delete mode 120000 .keyring/openpgp/linaro.org/nicolas.pitre/default
 delete mode 120000 .keyring/openpgp/linux.ibm.com/rppt/default
 delete mode 120000 .keyring/openpgp/linux.intel.com/alexander.shishkin/default
 delete mode 120000 .keyring/openpgp/linux.intel.com/jarkko.sakkinen/default
 delete mode 120000 .keyring/openpgp/linux.intel.com/mathew.j.martineau/default
 delete mode 120000 .keyring/openpgp/linux.vnet.ibm.com/boqun.feng/default
 delete mode 120000 .keyring/openpgp/majess.pl/l.majewski/default
 delete mode 120000 .keyring/openpgp/netapp.com/Trond.Myklebust/default
 delete mode 120000 .keyring/openpgp/netapp.com/pj.waskiewicz/default
 delete mode 120000 .keyring/openpgp/netapp.com/pjw/default
 delete mode 120000 .keyring/openpgp/nicira.com/pshelar/default
 delete mode 120000 .keyring/openpgp/nvidia.com/swarren/default
 delete mode 120000 .keyring/openpgp/nxp.com/abel.vesa/default
 delete mode 120000 .keyring/openpgp/opensource.altera.com/atull/default
 delete mode 120000 .keyring/openpgp/parity.io/jarkko/default
 delete mode 120000 .keyring/openpgp/pengutronix.de/u.kleine-koenig/default
 delete mode 120000 .keyring/openpgp/pobox.com/jgarzik/default
 delete mode 120000 .keyring/openpgp/primarydata.com/trond.myklebust/default
 delete mode 120000 .keyring/openpgp/profian.com/jarkko/default
 delete mode 120000 .keyring/openpgp/profusion.mobi/lucas.demarchi/default
 delete mode 120000 .keyring/openpgp/qtec.com/ricardo/default
 delete mode 120000 .keyring/openpgp/redhat.com/brouer/default
 delete mode 120000 .keyring/openpgp/redhat.com/hsiangkao/default
 delete mode 120000 .keyring/openpgp/redhat.com/jbrouer/default
 delete mode 120000 .keyring/openpgp/redhat.com/krzysztof.wilczynski/default
 delete mode 120000 .keyring/openpgp/redhat.com/kwilczyn/default
 delete mode 120000 .keyring/openpgp/redhat.com/kwilczynski/default
 delete mode 120000 .keyring/openpgp/rivosinc.com/palmer/default
 delete mode 120000 .keyring/openpgp/samsung.com/inki.dae/default
 delete mode 120000 .keyring/openpgp/slind.org/virtuoso/default
 delete mode 120000 .keyring/openpgp/somainline.org/konrad.dybcio/default
 delete mode 120000 .keyring/openpgp/suse.com/jthumshirn/default
 delete mode 120000 .keyring/openpgp/suse.com/neilb/default
 delete mode 120000 .keyring/openpgp/suse.com/nfbrown/default
 delete mode 120000 .keyring/openpgp/suse.com/nsaenzjulienne/default
 delete mode 120000 .keyring/openpgp/suse.de/jthumshirn/default
 delete mode 120000 .keyring/openpgp/suse.de/neilb/default
 delete mode 120000 .keyring/openpgp/suse.de/nsaenzjulienne/default
 delete mode 120000 .keyring/openpgp/synopsys.com/vgupta/default
 delete mode 120000 .keyring/openpgp/synopsys.com/vineet.gupta1/default
 delete mode 120000 .keyring/openpgp/tessares.net/matthieu.baerts/default
 delete mode 120000 .keyring/openpgp/ti.com/j-keerthy/default
 delete mode 120000 .keyring/openpgp/ti.com/kishon/default
 delete mode 120000 .keyring/openpgp/ti.com/p.yadav/default
 delete mode 120000 .keyring/openpgp/tuni.fi/jarkko.sakkinen/default
 delete mode 120000 .keyring/openpgp/ubuntu.com/joseph.salisbury/default
 delete mode 120000 .keyring/openpgp/ugcs.caltech.edu/ido/default
 delete mode 120000 .keyring/openpgp/vmware.com/dvhart/default
 delete mode 120000 .keyring/openpgp/wdc.com/chaitanya.kulkarni/default
 delete mode 120000 .keyring/openpgp/wil.cx/matthew/default
 delete mode 120000 .keyring/openpgp/wwwdotorg.org/swarren/default
 delete mode 120000 .keyring/openpgp/zankel.net/chris/default


base-commit: 94cea2f43ac3ca5132f7285c43a88797db9b75b5
-- 
2.47.3

