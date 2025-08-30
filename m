Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186EA2749CA
	for <keys@linux.kernel.org>; Sat, 30 Aug 2025 18:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756579554; cv=none; b=bCezFiiWQ9qLYjDO1UBp7s2FsM4dpv1VRMOkOUJEF+dzJCUkzuMcZ8JqbS8S0Rg1z+jsL2YEpZZFp0tGB+F9vDPvcdgrZBp7c+kb1YduwnmZXgUQmUh0WfdDPRzJDm8gfCwAgzYociuBfQ+jyILuqPW+Z/tFfiEtlP5gRf6zdsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756579554; c=relaxed/simple;
	bh=EX6vUkh1QPEf7yUSnx4Mq4JiUB1ollilDQruInFtaJM=;
	h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version; b=SnJZCnxOt6MBVYOYpwvPTlPH4IoVlE8d2UVrJ+3yOuReKaM27EHUMkT3jaHVCKX3Qk2eLsDX9gN4c8RMPitf3ELzaG2iwUhBQwqzYVq/Xwd5MbA9M5veyIRZpRFCyYESJau/XwfIhjmfPvkWWbOEX75XGdOBBCGmrlwfga6NaPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B5lyaN5A; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B5lyaN5A"
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-afeee20b7c0so409343666b.3
        for <keys@linux.kernel.org>; Sat, 30 Aug 2025 11:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756579551; x=1757184351; darn=linux.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EX6vUkh1QPEf7yUSnx4Mq4JiUB1ollilDQruInFtaJM=;
        b=B5lyaN5AFXoBY5mz+e7W2IVxYAlx1I8/n7d84ARzjvd63H5xH4tOTNeourj9FRP3qI
         2lPDvCZLe+zex+qJ5k5WuzvCXwk9OZjg8dWeASyrQW12glXooE6HWV6gzoY4oOVc9II1
         kSUwLsj64yAjyb6Ib5DUVnEwUApPXpM+nGIuykEMQKaWniaGrGtMEqiQsePtdBZYZOSq
         r8it3jz5Wqo9lYH0QCX5JBvdRtb5GT8RdDTGRdZ+NUVAOYUbu+t3ReV1JQFWC/kkf7FU
         THd1v607RCYoX6HJtCAcdHqL86/5w4A9uhuEYmakBIDgYoyRPyOtZ4y6EnBD4MZhgzr5
         cCmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756579551; x=1757184351;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EX6vUkh1QPEf7yUSnx4Mq4JiUB1ollilDQruInFtaJM=;
        b=jqPNwCq3KHVv0loAYVJhCauIKa6iv42PaRjY4n+0Bs000nJN2xVhRAWBIG6Fe+ZruV
         Z/iupGDUScQC+sQlT3C92zFRXg5wCAXfedsXgsxPNq55Bx3oOB6gdkvzJmoZ1df71Hvo
         S9VMcMLFrEV2Su4aNhhtjd8SzkFuIPxpoLpByxOQuHFUPGj3M6Qw6YKh3uLKiMwoQKqg
         k+RXWUgONxg9skbcNAFSWv5h+NzPaMDrCUm23dBJ2BAYQRSahRHYMi2zRrNmU1KCHHxx
         wVlnV1ATgsiYyi5whMYj28N2LdFnA3JlIKcNiV5EBkGkA5Y5bEfxNhHU7SqJzEwNJ2aK
         GoOA==
X-Gm-Message-State: AOJu0YzpyGsTZE8W8XG8hPE6Gi/HvJLfaw35ZlbML3Fq5VsSfmWhxyOn
	sINWcKQDbgzcP24P253FWovDob08a3WajaLZSRVQnIGbzXQQztYKPeUV0SLJY9Ik
X-Gm-Gg: ASbGncsBpjYNQPtrKRm9VEj/RAfqUlFp6jZhroE3h3tmbU8Z05Ljr2jnzJ4pAXfWRs1
	Q+5YJQDnGKRdqq1DCPdnG0ZjlkRODl0jZav+tQpsSLppUwaGj4NaY7fh2vGgpUDmlC9zuoARDUc
	KtKkvZyWq42xyq+Chvck+AmwGFf48rBYvgGKkNFIJqPimS2LSeHqi1stpy4OSQ2W1QG8nNr9CGr
	8CC2flRqvGsgv9HFEU9J4bbWsV/Ku41+WhqnkjqIA4894TmmIwUCDpVms2jEgTqGIkEGnun44IH
	nEfb/pTY3d0c50hm0jqt7oQJ/L7AyNqn+gg1AvlunR49eCRnSUiyvI4bXjDtIhkHI9bZkxs8dki
	vUAaRTWMYj4/2xyVDyl+ne5ygnSR6QyLano01OXGXdQ==
X-Google-Smtp-Source: AGHT+IEJ2sP7gpidMLK8XtFzwZZPf0a70eURRWt0ZwtYRw9KfxA2ApN57E2tYUEIInwCzBEV3OAKuA==
X-Received: by 2002:a17:907:3c82:b0:afa:1d2c:2dc7 with SMTP id a640c23a62f3a-b01d97ac777mr259709666b.57.1756579551187;
        Sat, 30 Aug 2025 11:45:51 -0700 (PDT)
Received: from giga-mm-3.home ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff15fccb15sm289698266b.98.2025.08.30.11.45.50
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 11:45:50 -0700 (PDT)
Message-ID: <278099da0521816dd9f1809aff40646ac2163ca3.camel@gmail.com>
Subject: Updated key Alexander Sverdlin
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: keys@linux.kernel.org
Date: Sat, 30 Aug 2025 20:45:56 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1 
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0

Hello!

Please find my signed key for inclusion into the kernel keyring.

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
evYGZRQ=3D
=3Dgywd
-----END PGP PUBLIC KEY BLOCK-----

--=20
Alexander Sverdlin.
