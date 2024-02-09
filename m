Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE3734CDE
	for <keys@linux.kernel.org>; Fri,  9 Feb 2024 12:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707481873; cv=none; b=aGZVwyyWeEgZqYFIrh37eqUwivRQjaMy2NsI97ib7IUQ906F3Wo0D8DOWsOpEXLZk5Hd1CqCQbvcb2Il6Ko/SYugzzZmfxLNkR22PnQhtIDF5r6UuMJVR9ZvtrOy8kJCdlrzjkkzHrB2MSOiYYLqf1wkU2BS42uuD+otIF+caTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707481873; c=relaxed/simple;
	bh=Bp1p5ANk8PDQvOt31kuhVO2BbD7e+Vzmf1xLylBWx00=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=sCq8dU0dBHNrrWDoYh0dDisv1gSyVpZuaUqppE5JGWLenzP3n9GZr7L6sQ+P1oB/FXcJkjIi6NRa1nXebDF86/63Y6nZR2PhV8pAFi7YGtkAb8VPiRUq0jOPJm+JjmeWyj5F7YTvA6N5IdGal0860waEbiVib6J6VE20yhq2UIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iGtH5T9i; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iGtH5T9i"
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-604c16ffa80so3626647b3.1
        for <keys@linux.kernel.org>; Fri, 09 Feb 2024 04:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707481870; x=1708086670; darn=linux.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Bp1p5ANk8PDQvOt31kuhVO2BbD7e+Vzmf1xLylBWx00=;
        b=iGtH5T9iRsp8y6hdbyNarojAj+qR4pNWHz8Xsz/LztXydw39Tw+TfBeZ0Kp2ZelS81
         RjOkQf2kVSQvaEMg0sCCGmfAF0CGqPnF9J2ZapjafwPIlzyDNj6Ty2Kw5QsCbZQlWkwn
         MckSKPrZzPRMebG/c3ZZM/2pm5UYjUPE0etIqyi46fIQeQNMvr6I9wQ3IqMJANYvuGmE
         3Kraj5bm1JTE4y4eIzqNJ3CpG2v4fE1cIKYV3ECAoffT7h0IlUkzkLfuKkA9abXrBNo6
         U2dm/I5kz959FhyCTi/LYw3RDFVrLrcw17Q5viScs3hHOS1E3DwmhBQAsPTlXgqzXa3Q
         xSTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707481870; x=1708086670;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bp1p5ANk8PDQvOt31kuhVO2BbD7e+Vzmf1xLylBWx00=;
        b=Upe/N6Y4tl3yaiFq+eAzMtJaKeF/6o+vAJWntqHco60Gop0/k+6Ig7C1JZZaDDsV8y
         VAVKUBreIQrBU6KLZpzSKUlc8H1PLaW2DLeAwpoe+dV3Q5x+pX3rLpn9kqSKv/9QzLF5
         9J/L47XHRF3kTXb8u4M8CHeEe31q766n/1/Se4xCBRLcIP9d/1nRamxPsERsHdP57DN+
         7uSFQ00uAbYA1yYnVl4sMPaq1H8pa1Fg3C1I0HFqlk+QQ8uaoUoanrUyMwcwoiUTGd8b
         Fwa6jgyGWump5ahBU/iI+UwfAA6MN7TC+w7aUUgx9UlHHBZDhMxWwspau/IXMbW+3Quu
         epwg==
X-Gm-Message-State: AOJu0YyVXfA0xJDaR5ziPZjD8TqmM/pU9UcSWvWz/qVOnCj4Spye8OOQ
	Z4No1SLWbuwlPg31EsaYn6z9zdiFZzV9VZMz0cRu+ZrqSjuOZ6UH3WX+BawLpY6XsxCMyxVy9R8
	CTNLydrxSaY6WbdHB43bPds3YPH5Pvrvly4XZT5Ct2hz8DGuz6ETDng==
X-Google-Smtp-Source: AGHT+IHGiX6OFUtVjlKsitq86a6fNlzk6mSd2h62LCijZb/BYOVWiPBaGqGUgkvY9YcLffstIVBuX3DpHwNUg3xGV0I=
X-Received: by 2002:a81:84c6:0:b0:604:660:25db with SMTP id
 u189-20020a8184c6000000b00604066025dbmr1365513ywf.12.1707481870512; Fri, 09
 Feb 2024 04:31:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 9 Feb 2024 13:30:34 +0100
Message-ID: <CAPDyKFoP2gVQPJArZJ_DfKXX9a25ASWTyUPQEgvo-74siL=hYg@mail.gmail.com>
Subject: 
To: keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
yWUqA2bGFMMQD+AOX+r5siMTtEjwo08KUb8f4A==
=bqZE
-----END PGP PUBLIC KEY BLOCK-----
