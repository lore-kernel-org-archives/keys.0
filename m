Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814D73D525C
	for <keys@linux.kernel.org>; Tue,  3 Feb 2026 18:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142787; cv=none; b=J65QV5ArcsxoQZ7yZ1co8Nt/ECjPIASLfY58MfIwgxLpYfgiBBLFr3sd+JkyyCRlq/nNgq+l0OVKUc+ZvksksI+HwSLVmJufLwl+02qFC0ZGCuuvtLR/0VYDPma1tdupEQBShIykXKFv2/3L6nPXjWFQDXwDWMdgGQGDD76eR6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142787; c=relaxed/simple;
	bh=vN6FE7tjTrCjjzXLeDTC0wRu+zKuoWot/5vCEMOtmVA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bEhCErq983kVvIGU99rvNUPOyixFyE/PrmgVQlV0KhvUr0Lqm8bdZNCJZnm3Lg38CdBhjHitf/bzDrnJBgR0fmfT1smSIZxzy5qH1r+yc34KbyL4WXG8r951iNCMX+bn7YuXdDE1V0PNbLFiLnDp3cQFh+gPcWmGSZQz0PVlvEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ER0gV/O+; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ER0gV/O+"
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4801c2fae63so45803865e9.2
        for <keys@linux.kernel.org>; Tue, 03 Feb 2026 10:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770142783; x=1770747583; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kov0E6h3AHXmQn4aCj3Q5OZzJO92Yk10q+cTqvbmS5o=;
        b=ER0gV/O+s9CLwpIISWZyLIIaTj+HYImx1eJo5L3D+/niR1wJRP/mZhSMKOVk2eq/kT
         d+dSESYQkrNu7YZmJgJni8Z3lgeOIP7M91wORIaoWNFgINIjhEF6FWoiG6Ra/CB8Q3/0
         ZY247v2K84Tryf91IFRbHNJX/SolTWFrph+9uSzybJrcGzneGgz61eNMI8zhlrnYnWiv
         JkeVVnqKN/FhBVIDCYalnDoIBEEYWBjmyoa78qoFv2qYv3tCvqZ6HoUp+qBtSE69mS7v
         RV4WoRbLlBA/5ma8YzC9gFIqYx/TfoVm7YxgKQbyKuRt5y+yy22Y8EWgZVO5VafaTzND
         GCVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770142783; x=1770747583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Kov0E6h3AHXmQn4aCj3Q5OZzJO92Yk10q+cTqvbmS5o=;
        b=rhyRJuzrwHRcJvFhEx2ROOxBRmMYwODmXXwreWREfdFIDMfSzM9ddQQ7XCz0q4WbZZ
         gBR8jRuZe4TZJlakcDTjznxz1F7r6pPiJbdK2ZZPpGe6un4xRBHts9982ySmvPKIHqAB
         00VpRlmqDbbVTCahzblwfEZr+2MKp0n/GhXqnczUvM4PZXuO0K+UmJHQKUWaBnW50m0q
         LYxVQkzu9L0QKMLXmhVxHnd5+fW8J5aOQgXd/2cA6tFJldAX1JWjU3TfBkyg1S49mA7w
         aea1Wry3ZFcmCXDIa04H9JF3bZtdhcXEBUR4WYRc+RVg8VdPmXov0arLJeiKcIj5Kq3I
         ZDkg==
X-Gm-Message-State: AOJu0YzhPK0yqvVksOoB6vVJEqQQl1UH8amiU+lDh7FcMB3xxCUydJdl
	dtnHEo6ATH6gZyXJcgHDHGnQjazRZhh2JNsTrg+mp5WuFUaxcH5nUIXJH8jpdI4wbyzfKI2wT9V
	aDfdk
X-Gm-Gg: AZuq6aLW+mXs+qTZY+TGboF9hviKNwKMF4YqxdF7dhRWdXzfQBdDkRg+lVCwPobyU2I
	rdiaGFFVDG7EFhirWANw5op24ZtN+sMflXe5CEUYwjhrxGZVaV9qEAbkRUvH3cbDjoC9p6oZokw
	3HJkIPSOZ0ckkdkVCZ9Mv/BVIypm6n4x/KsHpbfcRSFPFcufRxeVnrOLh+L2T2N8ZJhLyMspiY7
	PcV+VFoMWdpkpMNnSTGOWTDTTLp/9lJ1NWziEp50GEQl/1q21mq9puoYc2Sf+u/gNl9GkzetxKc
	Bjjidj3VCCxKpF+u9xXH7R3GR3Kzr25uDz2kfy0WUGStKY7KAQ9ESzI5E8am7RTWlFO2bNiNDAZ
	UXW5YHSa+3mKZgE/b3Rt8Rku9+y7xBKwLOo4WWgvz/pd8uEMT+hhTdKqcWFiYDKq7jUWjCEV6PS
	NfZ23xWQZ/fPbPpPnIKQ13vvMT0IJ8TOM2Liq3yUVyLMa8V7W6hefk/5nhq5TclT7PnFG01YvaN
	n4=
X-Received: by 2002:a05:600c:548a:b0:479:3a86:dc1f with SMTP id 5b1f17b1804b1-4830e99dda5mr7443055e9.37.1770142782543;
        Tue, 03 Feb 2026 10:19:42 -0800 (PST)
Received: from localhost (p200300f65f20eb04d65faeeb2737200f.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:d65f:aeeb:2737:200f])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4830515381esm83309035e9.11.2026.02.03.10.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 10:19:42 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Subject: [PATCH 3/3] Drop revoked UIDs from b4 keyring
Date: Tue,  3 Feb 2026 19:19:26 +0100
Message-ID: <b02bd3320259c36f228dd32ed71e1ee9a41881cd.1770141846.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1770141846.git.u.kleine-koenig@baylibre.com>
References: <cover.1770141846.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=33018; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=vN6FE7tjTrCjjzXLeDTC0wRu+zKuoWot/5vCEMOtmVA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBpgjwy82QD1riiHO8joK8U5wag9Gn1bC4kn985H grR4GMp8GmJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaYI8MgAKCRCPgPtYfRL+ TryzCAC3HOtzAvp5zf4E6hd/LglulB6Et/6JLT+DxIzBS70kUA3cwcZkFM/7ZlyY4/1vZUAHuZT Ab5/nbgqLV5zYbZSeTgZKefpxU2bGUQmTEJhwKLHpSe6l2rn+oSV5HnxJ5KuRCAQGGedCKzEamT l6dOVtlv32uBQ+MKxHrFcgvrAk5haSY/aglXRtLFNl4unKeHO/KZsFklKXbiFAlyYWYkwvtId2r fdAitmtMHyCWp2usmAt2MHQ9n660rtnNsIdwQCBpFBTBeNM7hMrvkkHiKl28qRQz46CWP4pvj8i orrcfRVqH3wOhoPQ3ODsPIZ/cFHeYQNq/bAktj/54jJTpXjr
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The scripting that is used to generate the b4 keyring only adds entries
but fails to delete them.

This commit handles revoked UIDs and drops the links for the respective
email addresses:

certificate      | UID address                        | tracked since
-----------------+------------------------------------+-----------------------------------------
0393969D2D760850 | jthumshirn@suse.com                | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
0393969D2D760850 | jthumshirn@suse.de                 | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
04B08C8F1524FAF8 | acourbot@chromium.org              | 6531c9d646aca2a61ac87e27ce4988503bdbe1f8
04B08C8F1524FAF8 | acourbot@google.com                | 6531c9d646aca2a61ac87e27ce4988503bdbe1f8
0E5C785C804D82D9 | kishon@ti.com                      | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
0FDD682D974CA72A | msturner@google.com                | 9974d9a372b5c521b2ccd79646b27a6e0d675c7a
142AECC9A1677277 | mathew.j.martineau@linux.intel.com | 10e718223d7ec420bf164716ec60a603e45275d6
169AB7B1A4CFF8AE | narmstrong@baylibre.com            | 19a5b27853d31ea5399a411407eade59c0fbfbea
1B93437D3B41629B | krzysztof.kozlowski@canonical.com  | 8cb563c3639320bc73ebe2365506efa0b37c08c2
254BCFC56BF6CE8D | maxime@cerno.tech                  | e7d6e3bd725a0c92517e078ada3bc87c9483d85c
2D192CA624770276 | mario.limonciello@dell.com         | 50066c01520324778a603dec0991ad33408482b1
39CB544D6527CF60 | nicolas.pitre@linaro.org           | 671a0c921fe0ea3a142371a8e30fdab98fea1dc1
39CB544D6527CF60 | nico@linaro.org                    | 671a0c921fe0ea3a142371a8e30fdab98fea1dc1
3A554D033B37BCED | brouer@redhat.com                  | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
3A554D033B37BCED | jbrouer@redhat.com                 | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
3AB05486C7752FE1 | jarkko@parity.io                   | 6353e06c0aace7171f96fc6a9008e3d29dd1bc06
3AB05486C7752FE1 | jarkko@profian.com                 | ba6d0bd9f37c15f8d072d907f7b8d24b214a3f68
3AB05486C7752FE1 | jarkko.sakkinen@linux.intel.com    | cc5ab0ae0c8c2833627521776d7a0c44ddce4a65
3AB05486C7752FE1 | jarkko.sakkinen@tuni.fi            | 7b5ef4045f98031df27e1e2f60855b40ac74a2df
3D200E9CA6329909 | ard.biesheuvel@arm.com             | 632b48511a41b2a83b01891a0c4ef4cf658aa688
3D200E9CA6329909 | ard.biesheuvel@linaro.org          | 632b48511a41b2a83b01891a0c4ef4cf658aa688
478701720E5D7C58 | konrad.dybcio@somainline.org       | 54bd413d1a48f5ca5d8b6eba9aa5e6b135809507
517667E5996EE6AA | hsiangkao@redhat.com               | cc5ab0ae0c8c2833627521776d7a0c44ddce4a65
56A0D81F9F782DA9 | ricardo@qtec.com                   | 5ca84ca9930f4b1e6852de40dcbe021ede18df7e
570338B018144F28 | mkorpershoek@baylibre.com          | 671a0c921fe0ea3a142371a8e30fdab98fea1dc1
586F64FBA9D92344 | krisman@collabora.com              | 7aae0a8d7b110c4face18e4ed4cf8c4961be8718
5937189AD3FBC665 | khilman@deeprootsystems.com        | 162ae1a90ff558cb7449fce4331deb91bb96cd92
651D4DB8AB5AE780 | oded.gabbay@amd.com                | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
670BE78A960A00F2 | Trond.Myklebust@netapp.com         | e7d6e3bd725a0c92517e078ada3bc87c9483d85c
670BE78A960A00F2 | trond.myklebust@primarydata.com    | e7d6e3bd725a0c92517e078ada3bc87c9483d85c
69D7F1DDE28AC25E | vgupta@synopsys.com                | 4fb0eaaa916714cec4ac406a9b65ff8fff26059f
69D7F1DDE28AC25E | vineet.gupta1@synopsys.com         | 4fb0eaaa916714cec4ac406a9b65ff8fff26059f
6CEF3D27CA5B141E | joseph.salisbury@canonical.com     | 313f9f6cec864861c55371d1562df5389ec2a785
6CEF3D27CA5B141E | joseph.salisbury@ubuntu.com        | 313f9f6cec864861c55371d1562df5389ec2a785
6E17245526EB6D9B | kvalo@codeaurora.org               | f29aa22a43e0d851dcacc9eb92b00feb6e8072cd
7C64768D3DE334E7 | krzysztof.wilczynski@redhat.com    | 5ca84ca9930f4b1e6852de40dcbe021ede18df7e
7C64768D3DE334E7 | kwilczyn@redhat.com                | 5ca84ca9930f4b1e6852de40dcbe021ede18df7e
7C64768D3DE334E7 | kwilczynski@redhat.com             | 5ca84ca9930f4b1e6852de40dcbe021ede18df7e
85F56EA4E9E8138F | dagmcr@gmail.com                   | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
86CC4303D870877E | boqun.feng@linux.vnet.ibm.com      | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
86CC4303D870877E | fixme@archlinuxcn.org              | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
95F6661E7A3CC7FE | nsaenzjulienne@suse.com            | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
95F6661E7A3CC7FE | nsaenzjulienne@suse.de             | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
9BA2A5A630CBEA53 | lucas.demarchi@profusion.mobi      | a0895013bb9282a9d3a43bd50a0fd4781f0a5c53
A669D0002389BB21 | ido@ugcs.caltech.edu               | ba6d0bd9f37c15f8d072d907f7b8d24b214a3f68
A6A2316573C0A672 | jesse.brandeburg@intel.com         | e7d6e3bd725a0c92517e078ada3bc87c9483d85c
A6CC680C0AA77EB8 | dvhart@vmware.com                  | cc5ab0ae0c8c2833627521776d7a0c44ddce4a65
B54856CABE12232B | wbg@ishicorp.com                   | d52c4dd1c16e6b55019df7660089e48c3ebdcf35
C532392DE6DA7CE9 | rppt@linux.ibm.com                 | fe952924402665372560b826867234aa1caca139
E289A1F4351A51B3 | oleksij.rempel@gmx.de-mail.de      | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
E289A1F4351A51B3 | olerem@jabber.de                   | 2cf18b7358a45efdae7201826ad9f0a3cbe90b23
E2DCDD9132669BD6 | u.kleine-koenig@pengutronix.de     | 162ae1a90ff558cb7449fce4331deb91bb96cd92
EE7A392FDE96209F | dbk763@alumni.ku.dk                | 7f24495d9430328b4e25bda81e7eece9ea41d411
EF4CA1502CCBAB41 | palmerdabbelt@google.com           | 51e1f284b1c3de6507dce507105cd03d47ee2f0c
EF4CA1502CCBAB41 | palmer@rivosinc.com                | a2d4eb1013c922d5ed25544aa3e686d5a5a7276c
F6503556C11B1CCD | p.yadav@ti.com                     | 10e718223d7ec420bf164716ec60a603e45275d6
F6B7824F4269A073 | matthieu.baerts@tessares.net       | fc7b9f7403d8f8a8ec82c9163e250880a6de4f1c
F7BF214136F41FAE | abel.vesa@nxp.com                  | 13287eeb10a05b21e064dbdd8f0bb09b0f709e2b
---
 .keyring/openpgp/alumni.ku.dk/dbk763/default                | 1 -
 .keyring/openpgp/amd.com/oded.gabbay/default                | 1 -
 .keyring/openpgp/archlinuxcn.org/fixme/default              | 1 -
 .keyring/openpgp/arm.com/ard.biesheuvel/default             | 1 -
 .keyring/openpgp/baylibre.com/mkorpershoek/default          | 1 -
 .keyring/openpgp/baylibre.com/narmstrong/default            | 1 -
 .keyring/openpgp/canonical.com/joseph.salisbury/default     | 1 -
 .keyring/openpgp/canonical.com/krzysztof.kozlowski/default  | 1 -
 .keyring/openpgp/cerno.tech/maxime/default                  | 1 -
 .keyring/openpgp/chromium.org/acourbot/default              | 1 -
 .keyring/openpgp/codeaurora.org/kvalo/default               | 1 -
 .keyring/openpgp/collabora.com/krisman/default              | 1 -
 .keyring/openpgp/deeprootsystems.com/khilman/default        | 1 -
 .keyring/openpgp/dell.com/mario.limonciello/default         | 1 -
 .keyring/openpgp/gmail.com/dagmcr/default                   | 1 -
 .keyring/openpgp/gmx.de-mail.de/oleksij.rempel/default      | 1 -
 .keyring/openpgp/google.com/acourbot/default                | 1 -
 .keyring/openpgp/google.com/msturner/default                | 1 -
 .keyring/openpgp/google.com/palmerdabbelt/default           | 1 -
 .keyring/openpgp/intel.com/jesse.brandeburg/default         | 1 -
 .keyring/openpgp/ishicorp.com/wbg/default                   | 1 -
 .keyring/openpgp/jabber.de/olerem/default                   | 1 -
 .keyring/openpgp/linaro.org/ard.biesheuvel/default          | 1 -
 .keyring/openpgp/linaro.org/nico/default                    | 1 -
 .keyring/openpgp/linaro.org/nicolas.pitre/default           | 1 -
 .keyring/openpgp/linux.ibm.com/rppt/default                 | 1 -
 .keyring/openpgp/linux.intel.com/jarkko.sakkinen/default    | 1 -
 .keyring/openpgp/linux.intel.com/mathew.j.martineau/default | 1 -
 .keyring/openpgp/linux.vnet.ibm.com/boqun.feng/default      | 1 -
 .keyring/openpgp/netapp.com/Trond.Myklebust/default         | 1 -
 .keyring/openpgp/nxp.com/abel.vesa/default                  | 1 -
 .keyring/openpgp/parity.io/jarkko/default                   | 1 -
 .keyring/openpgp/pengutronix.de/u.kleine-koenig/default     | 1 -
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
 .keyring/openpgp/somainline.org/konrad.dybcio/default       | 1 -
 .keyring/openpgp/suse.com/jthumshirn/default                | 1 -
 .keyring/openpgp/suse.com/nsaenzjulienne/default            | 1 -
 .keyring/openpgp/suse.de/jthumshirn/default                 | 1 -
 .keyring/openpgp/suse.de/nsaenzjulienne/default             | 1 -
 .keyring/openpgp/synopsys.com/vgupta/default                | 1 -
 .keyring/openpgp/synopsys.com/vineet.gupta1/default         | 1 -
 .keyring/openpgp/tessares.net/matthieu.baerts/default       | 1 -
 .keyring/openpgp/ti.com/kishon/default                      | 1 -
 .keyring/openpgp/ti.com/p.yadav/default                     | 1 -
 .keyring/openpgp/tuni.fi/jarkko.sakkinen/default            | 1 -
 .keyring/openpgp/ubuntu.com/joseph.salisbury/default        | 1 -
 .keyring/openpgp/ugcs.caltech.edu/ido/default               | 1 -
 .keyring/openpgp/vmware.com/dvhart/default                  | 1 -
 58 files changed, 58 deletions(-)
 delete mode 120000 .keyring/openpgp/alumni.ku.dk/dbk763/default
 delete mode 120000 .keyring/openpgp/amd.com/oded.gabbay/default
 delete mode 120000 .keyring/openpgp/archlinuxcn.org/fixme/default
 delete mode 120000 .keyring/openpgp/arm.com/ard.biesheuvel/default
 delete mode 120000 .keyring/openpgp/baylibre.com/mkorpershoek/default
 delete mode 120000 .keyring/openpgp/baylibre.com/narmstrong/default
 delete mode 120000 .keyring/openpgp/canonical.com/joseph.salisbury/default
 delete mode 120000 .keyring/openpgp/canonical.com/krzysztof.kozlowski/default
 delete mode 120000 .keyring/openpgp/cerno.tech/maxime/default
 delete mode 120000 .keyring/openpgp/chromium.org/acourbot/default
 delete mode 120000 .keyring/openpgp/codeaurora.org/kvalo/default
 delete mode 120000 .keyring/openpgp/collabora.com/krisman/default
 delete mode 120000 .keyring/openpgp/deeprootsystems.com/khilman/default
 delete mode 120000 .keyring/openpgp/dell.com/mario.limonciello/default
 delete mode 120000 .keyring/openpgp/gmail.com/dagmcr/default
 delete mode 120000 .keyring/openpgp/gmx.de-mail.de/oleksij.rempel/default
 delete mode 120000 .keyring/openpgp/google.com/acourbot/default
 delete mode 120000 .keyring/openpgp/google.com/msturner/default
 delete mode 120000 .keyring/openpgp/google.com/palmerdabbelt/default
 delete mode 120000 .keyring/openpgp/intel.com/jesse.brandeburg/default
 delete mode 120000 .keyring/openpgp/ishicorp.com/wbg/default
 delete mode 120000 .keyring/openpgp/jabber.de/olerem/default
 delete mode 120000 .keyring/openpgp/linaro.org/ard.biesheuvel/default
 delete mode 120000 .keyring/openpgp/linaro.org/nico/default
 delete mode 120000 .keyring/openpgp/linaro.org/nicolas.pitre/default
 delete mode 120000 .keyring/openpgp/linux.ibm.com/rppt/default
 delete mode 120000 .keyring/openpgp/linux.intel.com/jarkko.sakkinen/default
 delete mode 120000 .keyring/openpgp/linux.intel.com/mathew.j.martineau/default
 delete mode 120000 .keyring/openpgp/linux.vnet.ibm.com/boqun.feng/default
 delete mode 120000 .keyring/openpgp/netapp.com/Trond.Myklebust/default
 delete mode 120000 .keyring/openpgp/nxp.com/abel.vesa/default
 delete mode 120000 .keyring/openpgp/parity.io/jarkko/default
 delete mode 120000 .keyring/openpgp/pengutronix.de/u.kleine-koenig/default
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
 delete mode 120000 .keyring/openpgp/somainline.org/konrad.dybcio/default
 delete mode 120000 .keyring/openpgp/suse.com/jthumshirn/default
 delete mode 120000 .keyring/openpgp/suse.com/nsaenzjulienne/default
 delete mode 120000 .keyring/openpgp/suse.de/jthumshirn/default
 delete mode 120000 .keyring/openpgp/suse.de/nsaenzjulienne/default
 delete mode 120000 .keyring/openpgp/synopsys.com/vgupta/default
 delete mode 120000 .keyring/openpgp/synopsys.com/vineet.gupta1/default
 delete mode 120000 .keyring/openpgp/tessares.net/matthieu.baerts/default
 delete mode 120000 .keyring/openpgp/ti.com/kishon/default
 delete mode 120000 .keyring/openpgp/ti.com/p.yadav/default
 delete mode 120000 .keyring/openpgp/tuni.fi/jarkko.sakkinen/default
 delete mode 120000 .keyring/openpgp/ubuntu.com/joseph.salisbury/default
 delete mode 120000 .keyring/openpgp/ugcs.caltech.edu/ido/default
 delete mode 120000 .keyring/openpgp/vmware.com/dvhart/default

diff --git a/.keyring/openpgp/alumni.ku.dk/dbk763/default b/.keyring/openpgp/alumni.ku.dk/dbk763/default
deleted file mode 120000
index dfa7d60af52c..000000000000
--- a/.keyring/openpgp/alumni.ku.dk/dbk763/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/EE7A392FDE96209F.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/amd.com/oded.gabbay/default b/.keyring/openpgp/amd.com/oded.gabbay/default
deleted file mode 120000
index c1f0b8331873..000000000000
--- a/.keyring/openpgp/amd.com/oded.gabbay/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/651D4DB8AB5AE780.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/archlinuxcn.org/fixme/default b/.keyring/openpgp/archlinuxcn.org/fixme/default
deleted file mode 120000
index 1016a0645d13..000000000000
--- a/.keyring/openpgp/archlinuxcn.org/fixme/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/86CC4303D870877E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/arm.com/ard.biesheuvel/default b/.keyring/openpgp/arm.com/ard.biesheuvel/default
deleted file mode 120000
index f7212b62014a..000000000000
--- a/.keyring/openpgp/arm.com/ard.biesheuvel/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/3D200E9CA6329909.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/baylibre.com/mkorpershoek/default b/.keyring/openpgp/baylibre.com/mkorpershoek/default
deleted file mode 120000
index bc676f7f049f..000000000000
--- a/.keyring/openpgp/baylibre.com/mkorpershoek/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/570338B018144F28.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/baylibre.com/narmstrong/default b/.keyring/openpgp/baylibre.com/narmstrong/default
deleted file mode 120000
index 78cc3b7e2e0d..000000000000
--- a/.keyring/openpgp/baylibre.com/narmstrong/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/169AB7B1A4CFF8AE.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/canonical.com/joseph.salisbury/default b/.keyring/openpgp/canonical.com/joseph.salisbury/default
deleted file mode 120000
index 3f1b3c882adb..000000000000
--- a/.keyring/openpgp/canonical.com/joseph.salisbury/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/6CEF3D27CA5B141E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/canonical.com/krzysztof.kozlowski/default b/.keyring/openpgp/canonical.com/krzysztof.kozlowski/default
deleted file mode 120000
index 600b34f25d86..000000000000
--- a/.keyring/openpgp/canonical.com/krzysztof.kozlowski/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/1B93437D3B41629B.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/cerno.tech/maxime/default b/.keyring/openpgp/cerno.tech/maxime/default
deleted file mode 120000
index b46466f06ae8..000000000000
--- a/.keyring/openpgp/cerno.tech/maxime/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/254BCFC56BF6CE8D.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/chromium.org/acourbot/default b/.keyring/openpgp/chromium.org/acourbot/default
deleted file mode 120000
index 372763eb6398..000000000000
--- a/.keyring/openpgp/chromium.org/acourbot/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/04B08C8F1524FAF8.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/codeaurora.org/kvalo/default b/.keyring/openpgp/codeaurora.org/kvalo/default
deleted file mode 120000
index ee6a6dc7c6f0..000000000000
--- a/.keyring/openpgp/codeaurora.org/kvalo/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/6E17245526EB6D9B.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/collabora.com/krisman/default b/.keyring/openpgp/collabora.com/krisman/default
deleted file mode 120000
index c962e168b163..000000000000
--- a/.keyring/openpgp/collabora.com/krisman/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/586F64FBA9D92344.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/deeprootsystems.com/khilman/default b/.keyring/openpgp/deeprootsystems.com/khilman/default
deleted file mode 120000
index 9d9c9dc375d4..000000000000
--- a/.keyring/openpgp/deeprootsystems.com/khilman/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/5937189AD3FBC665.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/dell.com/mario.limonciello/default b/.keyring/openpgp/dell.com/mario.limonciello/default
deleted file mode 120000
index 4bb3819c597e..000000000000
--- a/.keyring/openpgp/dell.com/mario.limonciello/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/2D192CA624770276.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/gmail.com/dagmcr/default b/.keyring/openpgp/gmail.com/dagmcr/default
deleted file mode 120000
index f00f10fbefcf..000000000000
--- a/.keyring/openpgp/gmail.com/dagmcr/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/85F56EA4E9E8138F.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/gmx.de-mail.de/oleksij.rempel/default b/.keyring/openpgp/gmx.de-mail.de/oleksij.rempel/default
deleted file mode 120000
index 10117115b072..000000000000
--- a/.keyring/openpgp/gmx.de-mail.de/oleksij.rempel/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/E289A1F4351A51B3.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/google.com/acourbot/default b/.keyring/openpgp/google.com/acourbot/default
deleted file mode 120000
index 372763eb6398..000000000000
--- a/.keyring/openpgp/google.com/acourbot/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/04B08C8F1524FAF8.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/google.com/msturner/default b/.keyring/openpgp/google.com/msturner/default
deleted file mode 120000
index 2013148eac02..000000000000
--- a/.keyring/openpgp/google.com/msturner/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/0FDD682D974CA72A.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/google.com/palmerdabbelt/default b/.keyring/openpgp/google.com/palmerdabbelt/default
deleted file mode 120000
index 3f5b6e842ef2..000000000000
--- a/.keyring/openpgp/google.com/palmerdabbelt/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/EF4CA1502CCBAB41.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/intel.com/jesse.brandeburg/default b/.keyring/openpgp/intel.com/jesse.brandeburg/default
deleted file mode 120000
index 450c61bab709..000000000000
--- a/.keyring/openpgp/intel.com/jesse.brandeburg/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/A6A2316573C0A672.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/ishicorp.com/wbg/default b/.keyring/openpgp/ishicorp.com/wbg/default
deleted file mode 120000
index e6edd5416e70..000000000000
--- a/.keyring/openpgp/ishicorp.com/wbg/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/B54856CABE12232B.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/jabber.de/olerem/default b/.keyring/openpgp/jabber.de/olerem/default
deleted file mode 120000
index 10117115b072..000000000000
--- a/.keyring/openpgp/jabber.de/olerem/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/E289A1F4351A51B3.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linaro.org/ard.biesheuvel/default b/.keyring/openpgp/linaro.org/ard.biesheuvel/default
deleted file mode 120000
index f7212b62014a..000000000000
--- a/.keyring/openpgp/linaro.org/ard.biesheuvel/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/3D200E9CA6329909.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linaro.org/nico/default b/.keyring/openpgp/linaro.org/nico/default
deleted file mode 120000
index 541b8f02711b..000000000000
--- a/.keyring/openpgp/linaro.org/nico/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/39CB544D6527CF60.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linaro.org/nicolas.pitre/default b/.keyring/openpgp/linaro.org/nicolas.pitre/default
deleted file mode 120000
index 541b8f02711b..000000000000
--- a/.keyring/openpgp/linaro.org/nicolas.pitre/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/39CB544D6527CF60.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linux.ibm.com/rppt/default b/.keyring/openpgp/linux.ibm.com/rppt/default
deleted file mode 120000
index 4a8cd5de20e2..000000000000
--- a/.keyring/openpgp/linux.ibm.com/rppt/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/C532392DE6DA7CE9.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linux.intel.com/jarkko.sakkinen/default b/.keyring/openpgp/linux.intel.com/jarkko.sakkinen/default
deleted file mode 120000
index bf18228be747..000000000000
--- a/.keyring/openpgp/linux.intel.com/jarkko.sakkinen/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/3AB05486C7752FE1.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linux.intel.com/mathew.j.martineau/default b/.keyring/openpgp/linux.intel.com/mathew.j.martineau/default
deleted file mode 120000
index 6fde4b7907e8..000000000000
--- a/.keyring/openpgp/linux.intel.com/mathew.j.martineau/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/142AECC9A1677277.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/linux.vnet.ibm.com/boqun.feng/default b/.keyring/openpgp/linux.vnet.ibm.com/boqun.feng/default
deleted file mode 120000
index 1016a0645d13..000000000000
--- a/.keyring/openpgp/linux.vnet.ibm.com/boqun.feng/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/86CC4303D870877E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/netapp.com/Trond.Myklebust/default b/.keyring/openpgp/netapp.com/Trond.Myklebust/default
deleted file mode 120000
index 4508221305e5..000000000000
--- a/.keyring/openpgp/netapp.com/Trond.Myklebust/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/670BE78A960A00F2.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/nxp.com/abel.vesa/default b/.keyring/openpgp/nxp.com/abel.vesa/default
deleted file mode 120000
index 635c8698ba90..000000000000
--- a/.keyring/openpgp/nxp.com/abel.vesa/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/F7BF214136F41FAE.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/parity.io/jarkko/default b/.keyring/openpgp/parity.io/jarkko/default
deleted file mode 120000
index bf18228be747..000000000000
--- a/.keyring/openpgp/parity.io/jarkko/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/3AB05486C7752FE1.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/pengutronix.de/u.kleine-koenig/default b/.keyring/openpgp/pengutronix.de/u.kleine-koenig/default
deleted file mode 120000
index 4742030ac503..000000000000
--- a/.keyring/openpgp/pengutronix.de/u.kleine-koenig/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/E2DCDD9132669BD6.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/primarydata.com/trond.myklebust/default b/.keyring/openpgp/primarydata.com/trond.myklebust/default
deleted file mode 120000
index 4508221305e5..000000000000
--- a/.keyring/openpgp/primarydata.com/trond.myklebust/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/670BE78A960A00F2.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/profian.com/jarkko/default b/.keyring/openpgp/profian.com/jarkko/default
deleted file mode 120000
index bf18228be747..000000000000
--- a/.keyring/openpgp/profian.com/jarkko/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/3AB05486C7752FE1.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/profusion.mobi/lucas.demarchi/default b/.keyring/openpgp/profusion.mobi/lucas.demarchi/default
deleted file mode 120000
index 26c11e2b783f..000000000000
--- a/.keyring/openpgp/profusion.mobi/lucas.demarchi/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/9BA2A5A630CBEA53.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/qtec.com/ricardo/default b/.keyring/openpgp/qtec.com/ricardo/default
deleted file mode 120000
index 8d6aa8b83605..000000000000
--- a/.keyring/openpgp/qtec.com/ricardo/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/56A0D81F9F782DA9.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/redhat.com/brouer/default b/.keyring/openpgp/redhat.com/brouer/default
deleted file mode 120000
index 7b4a340e0372..000000000000
--- a/.keyring/openpgp/redhat.com/brouer/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/3A554D033B37BCED.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/redhat.com/hsiangkao/default b/.keyring/openpgp/redhat.com/hsiangkao/default
deleted file mode 120000
index 2e703dc0eb89..000000000000
--- a/.keyring/openpgp/redhat.com/hsiangkao/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/517667E5996EE6AA.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/redhat.com/jbrouer/default b/.keyring/openpgp/redhat.com/jbrouer/default
deleted file mode 120000
index 7b4a340e0372..000000000000
--- a/.keyring/openpgp/redhat.com/jbrouer/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/3A554D033B37BCED.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/redhat.com/krzysztof.wilczynski/default b/.keyring/openpgp/redhat.com/krzysztof.wilczynski/default
deleted file mode 120000
index bfeaca3098ab..000000000000
--- a/.keyring/openpgp/redhat.com/krzysztof.wilczynski/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/7C64768D3DE334E7.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/redhat.com/kwilczyn/default b/.keyring/openpgp/redhat.com/kwilczyn/default
deleted file mode 120000
index bfeaca3098ab..000000000000
--- a/.keyring/openpgp/redhat.com/kwilczyn/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/7C64768D3DE334E7.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/redhat.com/kwilczynski/default b/.keyring/openpgp/redhat.com/kwilczynski/default
deleted file mode 120000
index bfeaca3098ab..000000000000
--- a/.keyring/openpgp/redhat.com/kwilczynski/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/7C64768D3DE334E7.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/rivosinc.com/palmer/default b/.keyring/openpgp/rivosinc.com/palmer/default
deleted file mode 120000
index 3f5b6e842ef2..000000000000
--- a/.keyring/openpgp/rivosinc.com/palmer/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/EF4CA1502CCBAB41.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/somainline.org/konrad.dybcio/default b/.keyring/openpgp/somainline.org/konrad.dybcio/default
deleted file mode 120000
index 768102d69dd6..000000000000
--- a/.keyring/openpgp/somainline.org/konrad.dybcio/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/478701720E5D7C58.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/suse.com/jthumshirn/default b/.keyring/openpgp/suse.com/jthumshirn/default
deleted file mode 120000
index 4f754b3cff0d..000000000000
--- a/.keyring/openpgp/suse.com/jthumshirn/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/0393969D2D760850.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/suse.com/nsaenzjulienne/default b/.keyring/openpgp/suse.com/nsaenzjulienne/default
deleted file mode 120000
index 53c5161f92f1..000000000000
--- a/.keyring/openpgp/suse.com/nsaenzjulienne/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/95F6661E7A3CC7FE.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/suse.de/jthumshirn/default b/.keyring/openpgp/suse.de/jthumshirn/default
deleted file mode 120000
index 4f754b3cff0d..000000000000
--- a/.keyring/openpgp/suse.de/jthumshirn/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/0393969D2D760850.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/suse.de/nsaenzjulienne/default b/.keyring/openpgp/suse.de/nsaenzjulienne/default
deleted file mode 120000
index 53c5161f92f1..000000000000
--- a/.keyring/openpgp/suse.de/nsaenzjulienne/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/95F6661E7A3CC7FE.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/synopsys.com/vgupta/default b/.keyring/openpgp/synopsys.com/vgupta/default
deleted file mode 120000
index 598224dd296e..000000000000
--- a/.keyring/openpgp/synopsys.com/vgupta/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/69D7F1DDE28AC25E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/synopsys.com/vineet.gupta1/default b/.keyring/openpgp/synopsys.com/vineet.gupta1/default
deleted file mode 120000
index 598224dd296e..000000000000
--- a/.keyring/openpgp/synopsys.com/vineet.gupta1/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/69D7F1DDE28AC25E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/tessares.net/matthieu.baerts/default b/.keyring/openpgp/tessares.net/matthieu.baerts/default
deleted file mode 120000
index 30ec5a89ddb7..000000000000
--- a/.keyring/openpgp/tessares.net/matthieu.baerts/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/F6B7824F4269A073.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/ti.com/kishon/default b/.keyring/openpgp/ti.com/kishon/default
deleted file mode 120000
index 0915871015c5..000000000000
--- a/.keyring/openpgp/ti.com/kishon/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/0E5C785C804D82D9.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/ti.com/p.yadav/default b/.keyring/openpgp/ti.com/p.yadav/default
deleted file mode 120000
index b221e04e61e3..000000000000
--- a/.keyring/openpgp/ti.com/p.yadav/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/F6503556C11B1CCD.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/tuni.fi/jarkko.sakkinen/default b/.keyring/openpgp/tuni.fi/jarkko.sakkinen/default
deleted file mode 120000
index bf18228be747..000000000000
--- a/.keyring/openpgp/tuni.fi/jarkko.sakkinen/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/3AB05486C7752FE1.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/ubuntu.com/joseph.salisbury/default b/.keyring/openpgp/ubuntu.com/joseph.salisbury/default
deleted file mode 120000
index 3f1b3c882adb..000000000000
--- a/.keyring/openpgp/ubuntu.com/joseph.salisbury/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/6CEF3D27CA5B141E.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/ugcs.caltech.edu/ido/default b/.keyring/openpgp/ugcs.caltech.edu/ido/default
deleted file mode 120000
index a66bb977aeed..000000000000
--- a/.keyring/openpgp/ugcs.caltech.edu/ido/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/A669D0002389BB21.asc
\ No newline at end of file
diff --git a/.keyring/openpgp/vmware.com/dvhart/default b/.keyring/openpgp/vmware.com/dvhart/default
deleted file mode 120000
index cbd2b8648dc4..000000000000
--- a/.keyring/openpgp/vmware.com/dvhart/default
+++ /dev/null
@@ -1 +0,0 @@
-../../../../keys/A6CC680C0AA77EB8.asc
\ No newline at end of file
-- 
2.47.3

