Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB57E183971
	for <keys@linux.kernel.org>; Thu, 30 May 2024 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717059537; cv=none; b=DqPqyn77Qq9/28MbLUyRCivvjSBzpZsARu0y7OlE/IFe6coQM1h4he/ot9g9ZTbbtiBixBhqx/hgSaJwenHkPdBxMZgTE2KCQ0KpxnIEg4hUiU24BAE16Cmm/6qkYF5Wcea9v0GWR0JdgU0u5v2OTVklGYc9NEw0m/FlecD5+lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717059537; c=relaxed/simple;
	bh=1NCpIYTj0agjSXCA/yVZmo4aSexYpcfenB5S13lcAsU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=oGxVdtFXES2rX0z3QyzqV7b1AWrkt3W+CR2/HEY/aGePOJcowuAH97aAWtXQan/NkfyItmgFkLn1xXP88819B1n/+jfa9eBVjvCBjbE6RGjtiVigZLFRcEtb4xwng2dDDdWMAV+x7l+vli8sE9ZytTWZB1YmvHXYUdRPy27t0YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=metaspace.dk; spf=none smtp.mailfrom=metaspace.dk; dkim=pass (2048-bit key) header.d=metaspace-dk.20230601.gappssmtp.com header.i=@metaspace-dk.20230601.gappssmtp.com header.b=Qf81JbEc; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=metaspace.dk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=metaspace.dk
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=metaspace-dk.20230601.gappssmtp.com header.i=@metaspace-dk.20230601.gappssmtp.com header.b="Qf81JbEc"
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52ab11ecdbaso769474e87.3
        for <keys@linux.kernel.org>; Thu, 30 May 2024 01:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=metaspace-dk.20230601.gappssmtp.com; s=20230601; t=1717059531; x=1717664331; darn=linux.kernel.org;
        h=mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1NCpIYTj0agjSXCA/yVZmo4aSexYpcfenB5S13lcAsU=;
        b=Qf81JbEcpIm6wFTeKRFDAYMWlnYXpwvEL+kX83ySfIm5n7lbAwQg789x0A/hsNi9Cq
         imJ2TEy8pFKIM9GreaqnI1JzZb6xKqQ+lqi1/mFq9a0t2HN3m4p5kL8lZhIUQfFWTkZq
         9ZwtbzhMtVZK9eDxZSA6w4bGAQ+SD33a86B6f1LGszFoObem1KKKHewfPvCCa6kd/4gU
         4FXZVKJwFZAUDDRJPDOPF5eSonkAobq5u4vmF59JMsr7RdAMCXfGSXp/Mz2vDSyQAFx5
         q3GRMNlzn1b3oY5M9uETjSM7ua458dFD9sL8cLwYGaqaCukioeN4+wtnbU/msEyQUqpR
         ZWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717059531; x=1717664331;
        h=mime-version:message-id:date:subject:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1NCpIYTj0agjSXCA/yVZmo4aSexYpcfenB5S13lcAsU=;
        b=m+No19cDxSVYK1G9wOBtP+0hnbqw+JbaOqBwhBEHLDjv2vie/z/LhJ41/yBBUtNXKf
         BPwoByu/nVbgL+XKyRd9fc+zTL5XWqbNqOZZaGRVz7O6lZbd0yUpCfxyxvcgjcf6LvYB
         VcQIpDcaF+GSoogmY6yRaebJopuE6BDgHhyM48D+v5eD0yEKypNBlv0yKhOchH7yCCPr
         pAT1a7fX1jEI1k1aO2iRkp9g2S16fqBcjJoxqcGukJXJ5yIBR9Rxc5iPTlbkvEA+WdmA
         TsdI4bWoxNR6vf0/fV5AyNXUoBH0l6+Aeb70rWKJsu7B30tSkNZjFcoinLYC65I7AnZE
         Znsg==
X-Gm-Message-State: AOJu0Yxj9NgLD7e30eQ7JSLxFBiP2bJTasGlud8AKhxuOlD4Fb3oaQpg
	Fba9FvVeFP8PSdOYKcFaukaijo3oZdOumujIKFYQeH6SAgU+XwmZmdUhFCQuDD/zqHPnAD34zAX
	Q
X-Google-Smtp-Source: AGHT+IHxBiurGgkUU4wC8eise1VdYRs+tf98nOQ1RKPJK4oBzRMVJgCWdTQ+gAZwAeXKeSVPUi6Ylw==
X-Received: by 2002:a19:6450:0:b0:523:8819:6c with SMTP id 2adb3069b0e04-52b7d43806emr992107e87.30.1717059531498;
        Thu, 30 May 2024 01:58:51 -0700 (PDT)
Received: from localhost ([165.225.194.196])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4212708a706sm18166485e9.42.2024.05.30.01.58.50
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 01:58:51 -0700 (PDT)
From: Andreas Hindborg <nmi@metaspace.dk>
To: keys@linux.kernel.org
Subject: Key for inclusion
Date: Thu, 30 May 2024 10:58:40 +0200
Message-ID: <87v82vptfj.fsf@metaspace.dk>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain

Hi,

Please include my key in the key chain.

Best regards,
Andreas Hindborg


--=-=-=
Content-Type: text/plain
Content-Disposition: attachment; filename=nmi.asc
Content-Description: gpg key

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=FLnk
-----END PGP PUBLIC KEY BLOCK-----

--=-=-=--
