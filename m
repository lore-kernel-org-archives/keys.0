Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3D451FF7D1
	for <keys@linux.kernel.org>; Thu, 27 Mar 2025 09:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743069032; cv=none; b=ILCVfyp+d7xixSi8PPJOcqR26gRra18980/Zez7b4Fs8/P4/+43Kl1urkiZEmwE14NY0jD0yKoQIF4DWwpqPAHtbQauSVjx+Yxhjv1TLeaPYkfLhRhjy1avOHIXLsepvqHGyg1YNYnkRj9ZvqvfpZuvhb6nJJPPL8s9v0PdaRNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743069032; c=relaxed/simple;
	bh=Q1f2SFPg9rT9/zQKwl+D2q4vRAuq3TWqcYcshgN04Rk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=h6xj7Z1HeVTG1jdJuOASmWKnv+ZpiHo6vnPjg8xaJe2J66Xd9OBHxFXyGosD2EG5UvnHvh13Y/9h6HlVmQ1n8OoFQqjLPq6qV3qkidGQi4WFUPBkje2e8v80AAP1Y4SMhE9yFmjnDSAkvy5rhDu3ZLE0y9Ady321Ia251dq6s/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JBFSigW3; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JBFSigW3"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cfdc2c8c9so4278745e9.2
        for <keys@linux.kernel.org>; Thu, 27 Mar 2025 02:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743069028; x=1743673828; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q1f2SFPg9rT9/zQKwl+D2q4vRAuq3TWqcYcshgN04Rk=;
        b=JBFSigW3HDWRg4q2e1WeLb/LrhFid1C1CkLZ2GZZG1A2B5XYip73DDT0nqFhCLPtLl
         gF9R/ZiR34NYfEZ3+Yyma18MLySGhWUlz2AZNy51ZwjANkMTFdQQ2Z/97/mfW61a62HV
         +THvmQSkaS0XsXahKsNqB+FWPOyZt2pKe1+9o2hbh2Gpxxqn3tJofj13SSGRgvINci8Z
         6WQUedt0DG43OV16f9sSgO+6zkpqnb4uZRYVcTGlMjPWvsplsNZkN0tvk1Au1QEhl49m
         bDYIxuXZ5+sdRm8rE1EEFNkZ30bcvacCAP+XDvGB2QxiTVjaPi6aRibZwt+huWpt1AIY
         KzzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743069028; x=1743673828;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q1f2SFPg9rT9/zQKwl+D2q4vRAuq3TWqcYcshgN04Rk=;
        b=b4HFjuh8d5Qxv8HUd6jvRf03QkLmQm53K27gYR3FJf+jC7BeemaVg1LwqzzNxZ5G49
         +xzlQYLvfhN1SS2JxID1+4hrY6bwTFtW2sUe+Oqa6imZ2MEvnz4bHu0U9Lz+nAenfLF6
         HVz1eYgY+NI+KLVttRE/PCOShFJJru9P+br4jT22ryAYFsfn4r5iuxpIgVUPrwa+hIgE
         IBzOMR8lihtE6+QmjkUaaHYMsWqEuLUA6UYlwliM+PUFNsaDUr6VMGxXN8KUICHtpybU
         bO/+pbjTg8R/HfzAsp+NQ8A8MTAcnQ8V7LqmvUNngjI/US6LOi1IcyQ6v4jI0hJ3goLH
         Feog==
X-Gm-Message-State: AOJu0Yy+UYF0kdHiZs7+Cg2kGxgvesEjqNouVgrHivq+Lx0nQLt9C6Aq
	lTdN0ALOtLqSAflGZQtBp0SALaCT910D1eB7e1Op/R02xveqDBgwOjCyCzJbpJ0=
X-Gm-Gg: ASbGncu5t8v0WBuM6NZVP4wFiS4i/FNUHcyqkRaFzROzY2t3oDMY8l2aYLtM08k5wJn
	MCazPCBMqzB2hiv0XJ24y2FggLhDfGn/TIfrstXZNIP35bmS7lSDdio/ylWO+P+CdXQ3REw9gDO
	ljWBWEJi+ojBvdohAZzSTrwy3Qex+tFm7yKKaI4gvyulNJlUXmo9EVBQqEqOikZhR+qfEgNyTDn
	MqPBrKfIyJGZLmVgydmwrmHPy57Nk9qzjptAbVMEdVt8svN4XSmtvF7GQSNUzt2N93SFzb6tWZh
	J0p6gUt+2qMFVDfjvIkVJp0UcSoGxPIAcPqJrVSGxWqMS/RK
X-Google-Smtp-Source: AGHT+IH//ryWckgSPKrEyk4SL7mJzpWSlJFIVHp/JcFEwHCy6O0kK5pK00KQpdHpad22IUddfP4aLQ==
X-Received: by 2002:a05:600c:1d9b:b0:43d:526:e0ce with SMTP id 5b1f17b1804b1-43d85065142mr21551915e9.21.1743069027902;
        Thu, 27 Mar 2025 02:50:27 -0700 (PDT)
Received: from localhost ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82e836a8sm31376875e9.14.2025.03.27.02.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 02:50:27 -0700 (PDT)
From: Mattijs Korpershoek <mkorpershoek@baylibre.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Mattijs Korpershoek
 <mkorpershoek@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: mkorpershoek@kernel.org
In-Reply-To: <ctccjnltkfguihfuwxrqzfphiznkpwqwxi7wo7yba44qzpuxtq@s2veifw4qqtj>
References: <8734f0umqd.fsf@baylibre.com>
 <ctccjnltkfguihfuwxrqzfphiznkpwqwxi7wo7yba44qzpuxtq@s2veifw4qqtj>
Date: Thu, 27 Mar 2025 10:50:26 +0100
Message-ID: <875xjuajkt.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Uwe,

On jeu., mars 27, 2025 at 09:31, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@bay=
libre.com> wrote:

> Hello Mattijs,
>
> On Wed, Mar 26, 2025 at 11:09:46AM +0100, Mattijs Korpershoek wrote:
>> Looking at [1], it seems that my kernel.org uid was not added.
>
> Just a quick FYI: I think this is quite normal. Part of the process to
> get your kernel.org account is to provide your PGP key and that then
> goes into the kernel-pgpkeys repo. Of course at the time when you
> provide it, you don't own the kernel.org address yet, so unless you
> added an UID for it anyhow before sending it to the kernel helpdesk,
> it's not surprising that this UID is initially missing.

I see, thanks for the explanation!

Mattijs

>
> Best regards
> Uwe
