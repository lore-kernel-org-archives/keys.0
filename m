Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D721B7F4
	for <keys@linux.kernel.org>; Wed, 22 Oct 2025 17:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761153213; cv=none; b=fU+jjLwip7S1O7m6fNLkuNUASYSimsgy2IMBJL/9BwS2q8lNuqUPY+a1GJ6eOtkOAtS95LFxHRlU8zjOXOVr3AyET8mdbOPfm+LBSaCiSMifEAUm5dbeVoo1+/MxfN/mheGEsC3eTlaZO3F4AzG2b0lzQ2UwaLtZcGzF+W1ZMD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761153213; c=relaxed/simple;
	bh=S4S8w2wCQYv65JTFCXlh/F9OcQi/VizWkXuOX+uCWQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 In-Reply-To:Content-Type:Content-Disposition; b=csu3NPpmrOxT1TSinlZxcJJ66c1k2jam/TyehQrvT6+pW3B+iZwRjgcBBaM0/61ESqMaNOIxXGWXa9lsie7n0pIWIVY/KsGfeW5cWE6/mMFmjpBYoTv4M+8+WpTRDp6R98N8mqiNRz1wwZEN4XP051ZLlfREY3SdP4ZqjJRq76k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gzUL0MXj; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gzUL0MXj"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761153209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RnUbn85f8/SgeA4nsqChT4kHdjwVQa2/EebGSDK6cHc=;
	b=gzUL0MXjaGnTLFB7LeAV1M0eAv1zoIYbwMspDt5TLxvTC334y6pMTCGCDovWvpSTV8coWG
	ecsKx0cWxZL2e52dOj0+V3gmUDqpDUwdtZxcOp9bwiiBDZOE1sXdGvMEE9WxGct//GSLSH
	jSLBebEIuy95QaxWJgEZ/QZSt2ydv+w=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-401-RGuBKjwJN8exw0JYxFar-g-1; Wed, 22 Oct 2025 13:13:28 -0400
X-MC-Unique: RGuBKjwJN8exw0JYxFar-g-1
X-Mimecast-MFC-AGG-ID: RGuBKjwJN8exw0JYxFar-g_1761153208
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e884663b25so43644431cf.0
        for <keys@linux.kernel.org>; Wed, 22 Oct 2025 10:13:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761153208; x=1761758008;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RnUbn85f8/SgeA4nsqChT4kHdjwVQa2/EebGSDK6cHc=;
        b=gieCCOLqmM/KWXF1adPV3R8jXmXSb4ZW/fNKEXkqrrS1MajefXorMG24IeD9c2JbeL
         LHcAFKfJNKdtFJaaOQT/+29/Vzb88Ats83G25A4U0NzkR6rRh0DEeuqv/iJ47tnKh4iT
         mDCAA1LBvvXqhvhhZgzivUEEvZOvPH80gixZzZGAaH8bWdHsPAx0Bw+nrWHIhHv+N7Mi
         OK5ltnMNCBXWbQPyjPOsZGHYWKoz1yx8vaKVEyF52O9ArfXmzPFVOfdNgw7bs/MNX4nN
         awlnLVye63NIxdctlf3lO9QAEDKFnYhlngrd+/Vg5B84WDv+Sy423SSbxk3ylm2B58oA
         Rkcg==
X-Forwarded-Encrypted: i=1; AJvYcCWvNbv9yOvX5NNSgd8SA05VvyZQQibVAXPES3vTGoudYDHcGqOnzPQpJalLEZgKIcLkJoEv@linux.kernel.org
X-Gm-Message-State: AOJu0Yx1DTBdoi7g2+4BF3CyoRIWPEjL21Vqz63Dwcp/kVJx/NblCT8S
	S2Y5eGyZ/KYdZ58ZwoiZ3tFjaLkp2sAz5L5xIZK0GKBufs+5Kszta4FXA357wkShhW+/4tcejfG
	IdEvBwEURyQj3m0E2vWYtF4Xp3oAClxt46n3nf5vgEzrEj7roluesjZZ3
X-Gm-Gg: ASbGncunlQ+vmGmIsqtXtHks7t6lLy8SGvRo5R+ZFWZAy4v8ej377xA1EE6Vgtr9A8T
	uqhU39Utg6wiwolAqM3xBnnv6Ul9NrUxTgEYA+LN9bJ7U1TXqm7M/9CCRv3Yp/lzoU1UwD/2y9n
	t8h0qyGJJ4TFZtOf7TELI/2+bZsHwPloGyuAMqmU+FNnsUvLSoid1BM7BIMLYZ6AoBvwykLZ56a
	syj0fy7XaIW2HLQbtJg9K0wIJSA/CQWdtDaTSBgtDzXGCO9SwED/oaPYonhGIDVCwO2OOFnZpIo
	gWjNDCoQV9koNyXXYzGmXPqGk1HVGs00i7IpcWX5ZeGQLDlmSuBXoh7KYOM2sNcV9Efg9sLegXB
	2KKHPVFjTYNbQShE1Pbu1ZcOVgFm8qA==
X-Received: by 2002:ac8:5a11:0:b0:4e8:a9f6:360 with SMTP id d75a77b69052e-4e8a9f60650mr209240401cf.70.1761153207980;
        Wed, 22 Oct 2025 10:13:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFD8PFjBCDAAr3o4UK0j0V30Dbff7PxwTREbvLaoTq1DdDoOJgOH5l6GTpwDiCJraWB0ZSlHw==
X-Received: by 2002:ac8:5a11:0:b0:4e8:a9f6:360 with SMTP id d75a77b69052e-4e8a9f60650mr209239821cf.70.1761153207427;
        Wed, 22 Oct 2025 10:13:27 -0700 (PDT)
Received: from redhat.com ([2600:382:850c:2356:ee5a:7724:74f3:5341])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e8ab10c213sm96145341cf.36.2025.10.22.10.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 10:13:26 -0700 (PDT)
Date: Wed, 22 Oct 2025 13:13:25 -0400
From: Brian Masney <bmasney@redhat.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	keys@linux.kernel.org
Subject: Re: Questiona about additional signatures on my key have not been
 synced to kernel-pgpkeys
Message-ID: <aPkQtQzrSo30E0Zx@redhat.com>
References: <CABx5tqJP03jUj+xieVdG=wDjmEKAfqXYF03+tr0WvvbQ_OTG+w@mail.gmail.com>
 <z2gr5m6bvcel4vzugolc2m52wdsuuffekorx4upxagflrespvh@5xue6nt4dvnq>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
In-Reply-To: <z2gr5m6bvcel4vzugolc2m52wdsuuffekorx4upxagflrespvh@5xue6nt4dvnq>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: iFj0hCv5rv5g2M3FvV7xsAweIFW1d7MmXc9jfOAKEtM_1761153208
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Oct 22, 2025 at 04:18:15PM +0200, Uwe Kleine-König wrote:
> That's expected behaviour (expected to me that is :-).
> 
> Since some time gpg defaults to not sync 3rd-party signatures when
> fetching a key from a keyserver. This is to cope for issues like
> 
> 	https://dkg.fifthhorseman.net/blog/openpgp-certificate-flooding.html
> 
> . So sending the key to the list is the right thing to do.
> 
> If you know what you're doing you can pass `--keyserver-options
> no-self-sigs-only` to gpg to "fix" that behaviour:

Thanks for the detailed explanation. That makes sense. I sent my updated
key with the additional signatures in the original email to this thread.

Brian

