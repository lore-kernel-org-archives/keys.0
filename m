Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EB6204696
	for <keys@linux.kernel.org>; Thu, 13 Feb 2025 03:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739416944; cv=none; b=bsA/PxWnUK34Qa9YlXqd6g/hevTiNVGtMofOHjJyEeEFkDkyjcWiNbOn4ghjVc3v1wiszej2phsRdEbtMWdYXOH05KEr3MKDedD7aelPHRwdqu4GUHN/hu5rGN4nZRjnGE2mDJjZwYQnYv1EmW3z2o8E1tL6+QkVfA3OL18cRJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739416944; c=relaxed/simple;
	bh=Rh4rwsU9wf2H2uo/FMHLl03470dVnTpkKq0H5ICAn+Y=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=UPUviRlOLeHRCMjP9NtzUm+LKzugGXGIOV+xTI2flKO57yMVQtqbNFUXCR8W9oBRP1SDoVnWmUJZ7aZks5csTTigAGDvFOCGU8t/rBHWm6ZAgAkCaQ4+jh7j8sVwd9uwOfnIX0kuD9OwE75aPj1D+0W5AOPPgs/QSTwCxrZaL6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JhYsGR4D; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JhYsGR4D"
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5de38c3d2acso600069a12.1
        for <keys@linux.kernel.org>; Wed, 12 Feb 2025 19:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739416940; x=1740021740; darn=linux.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Rh4rwsU9wf2H2uo/FMHLl03470dVnTpkKq0H5ICAn+Y=;
        b=JhYsGR4DH1dXR7w6kuZHMCRr3LLF3HI6fyLy1ioNq/Nzshd7rhFALvwAkpMzTSwaxR
         mCTOzrhHohGuWa1JSAp13bwz1lQkaOGWkUG87wipqJJfQuSgi6qtHaE0unpulUvTvmMM
         jJgv2vIQloe2VcK+GU5b4kLcO2ikltdzvBgBIC4ExBNbwvQFkDTD/2qaw6sZScrKu86L
         XihTGWR8FHo8H2DW5M36v4K7kNg3DmeZzWwzW8+2WxUZPjwryHKJZuq8eAm05NcSSLqu
         FEta8pWwP6mD+j8mDZaDkRfVNfSo6e65yx45V78qPB7QXCMJbL5p8Ec3ddfQoAgT/19p
         QYeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739416940; x=1740021740;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rh4rwsU9wf2H2uo/FMHLl03470dVnTpkKq0H5ICAn+Y=;
        b=W/B1heW04q6BOytS2AJaCMAJXMVRpeimlfY7heRLyVRMq0PRmu8ULad5lnwN6EZ4uW
         38tc86GRNrKyfx8D52s4G/TTsf/a8FyZC17BU6dCKi39A8vopHRtzI0I7NsrvRRA9xbF
         9aSuks5BC3JeLlJWxF7FJnJ/i8fHn9CjPohckEpUiNtFo+RB0NFJsoH65ZsIlRy9pNLf
         Ly3h5OI9Y09mcMWee1RyINU2RP4Vmb0YMq6Ov8TX3Co818Epeq+ngQ+FhKW+KqMxdF6w
         39qLSrx8ajFt6qj5UuefYOpGnsg6ChTeINVjhtwS88SV6jiUrYpkBE/pai2sbwNCEMWj
         QuBA==
X-Gm-Message-State: AOJu0YyEPovxCGZLQ/+6sPP01clpiBcYd2Ud64WawP82aYYrZGPnYfz2
	OsYZkEiHkaKMK01GSvGGgM+I+VdWaaLgdjTTrT73S8S5EMyOXS/QzdFqf3OopGoRVzBvaO+ndcg
	BypUdt9QzG28TeKsO0qZMI31K+is1nwmsTGh5jw==
X-Gm-Gg: ASbGnctIRiqZ6p/Omk/J/ZfR18SIgd0BU00jaORbMPhh7DTBMObaav2d8Scn0QIIKY7
	MkLN5Q+tYIYfBJx9JTyp4U7QZcLayO7OcFUOP2hCtK1M6x1HtvJXtMoMfurP6toLPfP0q9teD
X-Google-Smtp-Source: AGHT+IG1V0E6CNIaxlzWYvkCaghImVCws2hbnmC5thkUoxx6DsnkCOq7bRyr1cnaq2WJkeH0/V6SMtazF982RfSbuG0=
X-Received: by 2002:a05:6402:354c:b0:5dc:74f1:8a31 with SMTP id
 4fb4d7f45d1cf-5deadde600emr4737609a12.26.1739416940166; Wed, 12 Feb 2025
 19:22:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
From: Alex Shi <seakeel@gmail.com>
Date: Thu, 13 Feb 2025 11:21:43 +0800
X-Gm-Features: AWEUYZngcpgX6_bDJbJYF_H599Kyoyf1BTEt_2ejNKt0dDHzimfPRWxGwC9eK2E
Message-ID: <CAJy-AmnCPfyLaRyv2Ha58ggTtYTbZovwsQDaSFWmjJAgzXzepA@mail.gmail.com>
Subject: alexs@kernel.org
To: keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=4azS
-----END PGP PUBLIC KEY BLOCK-----
